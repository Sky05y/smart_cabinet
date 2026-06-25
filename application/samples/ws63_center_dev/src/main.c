#include "common_def.h"
#include "soc_osal.h"
#include "app_init.h"
#include "pinctrl.h"
#include "uart.h"
#include "sle_low_latency.h"
#include "securec.h"
#include "sle_uart_client.h"
#include "sle_device_discovery.h"
#include "sle_errcode.h"
#include "sle_connection_manager.h"
#include "sle_ssap_client.h"
#include "lwip/sockets.h"
#include "lwip/netdb.h"
#include "lwip/netifapi.h"
#include "wifi_hotspot.h"
#include "wifi_hotspot_config.h"
#include "td_base.h"
#include "td_type.h"
#include "stdlib.h"
#include "cmsis_os2.h"

#define SERVER_IP   "47.94.38.166"
#define SERVER_PORT 8000
#define SLE_UART_TASK_DURATION_MS           2000
#define SLE_UART_BAUDRATE                   115200
#define SLE_UART_TRANSFER_SIZE              512
#define CONFIG_SLE_UART_BUS 0
#define CONFIG_UART_TXD_PIN 17
#define CONFIG_UART_RXD_PIN 18

#define WIFI_IFNAME_MAX_SIZE             16
#define WIFI_MAX_SSID_LEN                33
#define WIFI_SCAN_AP_LIMIT               64
#define WIFI_MAC_LEN                     6
#define WIFI_STA_LOG              "[WIFI_STA]"
#define WIFI_NOT_AVALLIABLE              0
#define WIFI_AVALIABE                    1
#define WIFI_GET_IP_MAX_COUNT            300

#define WIFI_TASK_PRIO                  (osPriority_t)(13)
#define WIFI_TASK_DURATION_MS           2000
#define WIFI_TASK_STACK_SIZE            0x1000

#define SLE_ADV_HANDLE_DEFAULT              1
#define SLE_UART_TASK_STACK_SIZE   0x2000
#define SLE_UART_TASK_PRIO         13

#define MAX_SLE_SERVERS 2
#define SLE_UART_CLIENT_LOG "[sle uart client]"
static uint8_t g_app_uart_rx_buff[SLE_UART_TRANSFER_SIZE] = { 0 };
static uart_buffer_config_t g_app_uart_buffer_config = {
    .rx_buffer = g_app_uart_rx_buff,
    .rx_buffer_size = SLE_UART_TRANSFER_SIZE
};
// ===== SLE 多 Server 连接管理 =====
typedef struct {
    uint16_t conn_id;
    bool     connected;
    uint8_t  device_no;     // 1 或 2
    uint16_t write_handle;  // Server 的 write handle
    sle_addr_t addr;
} sle_server_t;

static sle_server_t g_servers[MAX_SLE_SERVERS] = {0};
static uint8_t g_server_found_count = 0;
static sle_addr_t g_server_addrs[MAX_SLE_SERVERS] = {0};

static uint16_t g_sle_uart_conn_id[MAX_SLE_SERVERS] = {0};
static uint16_t g_sle_uart_conn_num = 0;
static ssapc_write_param_t g_sle_uart_send_param = {0};

// WiFi 状态机（不变）
enum {
    WIFI_STA_SAMPLE_INIT = 0,
    WIFI_STA_SAMPLE_SCANING,
    WIFI_STA_SAMPLE_SCAN_DONE,
    WIFI_STA_SAMPLE_FOUND_TARGET,
    WIFI_STA_SAMPLE_CONNECTING,
    WIFI_STA_SAMPLE_CONNECT_DONE,
    WIFI_STA_SAMPLE_GET_IP,
} wifi_state_enum;

static td_u8 g_wifi_state = WIFI_STA_SAMPLE_INIT;

static td_void wifi_scan_state_changed(td_s32 state, td_s32 size)
{
    UNUSED(state);
    UNUSED(size);
    PRINT("%s::Scan done!.\r\n", WIFI_STA_LOG);
    g_wifi_state = WIFI_STA_SAMPLE_SCAN_DONE;
}

static td_void wifi_connection_changed(td_s32 state, const wifi_linked_info_stru *info, td_s32 reason_code)
{
    UNUSED(info);
    UNUSED(reason_code);
    if (state == WIFI_NOT_AVALLIABLE) {
        PRINT("%s::Connect fail!. try agin !\r\n", WIFI_STA_LOG);
        g_wifi_state = WIFI_STA_SAMPLE_INIT;
    } else {
        PRINT("%s::Connect succ!.\r\n", WIFI_STA_LOG);
        g_wifi_state = WIFI_STA_SAMPLE_CONNECT_DONE;
    }
}

wifi_event_stru wifi_event_cb = {
    .wifi_event_connection_changed = wifi_connection_changed,
    .wifi_event_scan_state_changed = wifi_scan_state_changed,
};

// ===== WiFi 相关函数（不变）=====
td_s32 example_get_match_network(wifi_sta_config_stru *expected_bss)
{
    td_s32  ret;
    td_u32  num = 64;
    td_char expected_ssid[] = "XM";
    td_char key[] = "Sky54321";
    td_bool find_ap = TD_FALSE;
    td_u8   bss_index;
    td_u32 scan_len = sizeof(wifi_scan_info_stru) * WIFI_SCAN_AP_LIMIT;
    wifi_scan_info_stru *result = osal_kmalloc(scan_len, OSAL_GFP_ATOMIC);
    if (result == TD_NULL) return -1;
    memset_s(result, scan_len, 0, scan_len);
    ret = wifi_sta_get_scan_info(result, &num);
    if (ret != 0) { osal_kfree(result); return -1; }
    for (bss_index = 0; bss_index < num; bss_index++) {
        if (strlen(expected_ssid) == strlen(result[bss_index].ssid)) {
            if (memcmp(expected_ssid, result[bss_index].ssid, strlen(expected_ssid)) == 0) {
                find_ap = TD_TRUE; break;
            }
        }
    }
    if (find_ap == TD_FALSE) { osal_kfree(result); return -1; }
    if (memcpy_s(expected_bss->ssid, WIFI_MAX_SSID_LEN, expected_ssid, strlen(expected_ssid)) != 0) { osal_kfree(result); return -1; }
    if (memcpy_s(expected_bss->bssid, WIFI_MAC_LEN, result[bss_index].bssid, WIFI_MAC_LEN) != 0) { osal_kfree(result); return -1; }
    expected_bss->security_type = result[bss_index].security_type;
    if (memcpy_s(expected_bss->pre_shared_key, WIFI_MAX_SSID_LEN, key, strlen(key)) != 0) { osal_kfree(result); return -1; }
    expected_bss->ip_type = 1;
    osal_kfree(result);
    return 0;
}

td_bool example_check_connect_status(td_void)
{
    td_u8 index;
    wifi_linked_info_stru wifi_status;
    for (index = 0; index < 5; index++) {
        (void)osDelay(50);
        memset_s(&wifi_status, sizeof(wifi_linked_info_stru), 0, sizeof(wifi_linked_info_stru));
        if (wifi_sta_get_ap_info(&wifi_status) != 0) continue;
        if (wifi_status.conn_state == 1) return 0;
    }
    return -1;
}

td_bool example_check_dhcp_status(struct netif *netif_p, td_u32 *wait_count)
{
    if ((ip_addr_isany(&(netif_p->ip_addr)) == 0) && (*wait_count <= WIFI_GET_IP_MAX_COUNT)) {
        PRINT("%s::STA DHCP success.\r\n", WIFI_STA_LOG);
        return 0;
    }
    if (*wait_count > WIFI_GET_IP_MAX_COUNT) {
        PRINT("%s::STA DHCP timeout, try again !.\r\n", WIFI_STA_LOG);
        *wait_count = 0;
        g_wifi_state = WIFI_STA_SAMPLE_INIT;
    }
    return -1;
}

td_s32 example_sta_function(td_void)
{
    td_char ifname[WIFI_IFNAME_MAX_SIZE + 1] = "wlan0";
    wifi_sta_config_stru expected_bss = {0};
    struct netif *netif_p = TD_NULL;
    td_u32 wait_count = 0;
    if (wifi_sta_enable() != 0) return -1;
    PRINT("%s::STA enable succ.\r\n", WIFI_STA_LOG);
    do {
        (void)osDelay(1);
        if (g_wifi_state == WIFI_STA_SAMPLE_INIT) {
            PRINT("%s::Scan start!\r\n", WIFI_STA_LOG);
            g_wifi_state = WIFI_STA_SAMPLE_SCANING;
            if (wifi_sta_scan() != 0) { g_wifi_state = WIFI_STA_SAMPLE_INIT; continue; }
        } else if (g_wifi_state == WIFI_STA_SAMPLE_SCAN_DONE) {
            if (example_get_match_network(&expected_bss) != 0) {
                PRINT("%s::Do not find AP, try again !\r\n", WIFI_STA_LOG);
                g_wifi_state = WIFI_STA_SAMPLE_INIT; continue;
            }
            g_wifi_state = WIFI_STA_SAMPLE_FOUND_TARGET;
        } else if (g_wifi_state == WIFI_STA_SAMPLE_FOUND_TARGET) {
            PRINT("%s::Connect start.\r\n", WIFI_STA_LOG);
            g_wifi_state = WIFI_STA_SAMPLE_CONNECTING;
            if (wifi_sta_connect(&expected_bss) != 0) { g_wifi_state = WIFI_STA_SAMPLE_INIT; continue; }
        } else if (g_wifi_state == WIFI_STA_SAMPLE_CONNECT_DONE) {
            PRINT("%s::DHCP start.\r\n", WIFI_STA_LOG);
            g_wifi_state = WIFI_STA_SAMPLE_GET_IP;
            netif_p = netifapi_netif_find(ifname);
            if (netif_p == TD_NULL || netifapi_dhcp_start(netif_p) != 0) {
                PRINT("%s::find netif or start DHCP fail, try again !\r\n", WIFI_STA_LOG);
                g_wifi_state = WIFI_STA_SAMPLE_INIT; continue;
            }
        } else if (g_wifi_state == WIFI_STA_SAMPLE_GET_IP) {
            if (example_check_dhcp_status(netif_p, &wait_count) == 0) break;
            wait_count++;
        }
    } while (1);
    return 0;
}

int sta_init(void *param)
{
    param = param;
    if (wifi_register_event_cb(&wifi_event_cb) != 0) {
        PRINT("%s::wifi_event_cb register fail.\r\n", WIFI_STA_LOG);
        return -1;
    }
    PRINT("%s::wifi_event_cb register succ.\r\n", WIFI_STA_LOG);
    while (wifi_is_wifi_inited() == 0) { (void)osDelay(10); }
    PRINT("%s::wifi init succ.\r\n", WIFI_STA_LOG);
    if (example_sta_function() != 0) {
        PRINT("%s::example_sta_function fail.\r\n", WIFI_STA_LOG);
        return -1;
    }
    return 0;
}

// ===== SLE Client 相关函数 =====

static int find_server_slot_by_conn(uint16_t conn_id)
{
    for (int i = 0; i < MAX_SLE_SERVERS; i++) {
        if (g_servers[i].conn_id == conn_id) return i;
    }
    return -1;
}

static int find_server_slot_by_device(uint8_t device_no)
{
    for (int i = 0; i < MAX_SLE_SERVERS; i++) {
        if (g_servers[i].connected && g_servers[i].device_no == device_no) return i;
    }
    return -1;
}
void signal_open_door(int door_no);
// ===== HTTP 发送 =====
void http_post_data(uint16_t lux, uint32_t alcohol, int t_int, int t_dec,
                    int h_int, int h_dec, int device_no)
{
    int sock;
    struct sockaddr_in server_addr;
    char request[512];
    char json_data[128];
    sprintf(json_data,
        "{\"lux\":%d,\"alcohol\":%d,\"temperature\":%d.%d,\"humidity\":%d.%d,\"device_no\":%d}",
        lux, alcohol, t_int, t_dec, h_int, h_dec, device_no);
    sprintf(request,
        "POST /api/upload/ HTTP/1.1\r\n"
        "Host: %s:%d\r\n"
        "Content-Type: application/json\r\n"
        "Content-Length: %d\r\n"
        "\r\n"
        "%s",
        SERVER_IP, SERVER_PORT, strlen(json_data), json_data);
    sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock < 0) { osal_printk("socket create fail\n"); return; }
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(SERVER_PORT);
    server_addr.sin_addr.s_addr = inet_addr(SERVER_IP);
    if (connect(sock, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
        osal_printk("connect fail\n"); closesocket(sock); return;
    }
    send(sock, request, strlen(request), 0);
    osal_printk("POST发送: %s\r\n", json_data);
    char recv_buf[512] = {0};
    size_t total = 0;
    int ret, content_length = -1, header_end = 0;
    while (total < sizeof(recv_buf) - 1) {
        ret = recv(sock, recv_buf + total, sizeof(recv_buf) - 1 - total, 0);
        if (ret <= 0) break;
        total += ret;
        if (content_length < 0) {
            char *cl = strstr(recv_buf, "Content-Length: ");
            if (cl) sscanf(cl, "Content-Length: %d", &content_length);
        }
        if (header_end == 0) {
            char *hend = strstr(recv_buf, "\r\n\r\n");
            if (hend) header_end = hend - recv_buf + 4;
        }
        if (content_length >= 0 && header_end > 0) {
            if ((int)total >= header_end + content_length) break;
        }
    }
    char *body = strstr(recv_buf, "\r\n\r\n");
    if (body) {
        body += 4;
        int door1 = 0, door2 = 0;
        char *door = strstr(body, "\"door\"");
        if (door) {
            sscanf(door, "\"door\": {\"1\": %d, \"2\": %d}", &door1, &door2);
            osal_printk("door: {\"1\": %d, \"2\": %d}\r\n", door1, door2);
            if (door1 == 1) signal_open_door(1);
            if (door2 == 1) signal_open_door(2);
        }
    }
    closesocket(sock);
}

// ===== 开门指令发送 =====
void signal_open_door(int door_no)
{
    osal_printk("Signaling to open door %d\r\n", door_no);
    int slot = find_server_slot_by_device(door_no);
    if (slot < 0) {
        osal_printk("[SLE] Device %d not connected\r\n", door_no);
        return;
    }
    uint8_t msg[16];
    int len = sprintf((char *)msg, "open:%d", door_no);
    ssapc_write_param_t param = {0};
    param.handle = g_servers[slot].write_handle;
    param.type = SSAP_PROPERTY_TYPE_VALUE;
    param.data = msg;
    param.data_len = len;
    errcode_t ret = ssapc_write_req(0, g_servers[slot].conn_id, &param);
    osal_printk("[SLE] Send to device%d (conn=0x%02x), ret=%d\r\n", door_no, g_servers[slot].conn_id, ret);
}

// ===== SLE Client 回调 =====

static void sle_uart_client_seek_enable_cbk(errcode_t status)
{
    if (status != 0) osal_printk("%s seek enable fail, status=%d\r\n", SLE_UART_CLIENT_LOG, status);
}

static void sle_uart_client_seek_result_cbk(sle_seek_result_info_t *seek_result_data)
{
    if (seek_result_data == NULL) return;
    
    // 如果已经连满了，不处理
    if (g_sle_uart_conn_num >= MAX_SLE_SERVERS) {
        return;
    }
    
    // 检查是否已连接
    for (int i = 0; i < MAX_SLE_SERVERS; i++) {
        if (g_servers[i].connected && 
            memcmp(g_servers[i].addr.addr, seek_result_data->addr.addr, SLE_ADDR_LEN) == 0) {
            return; // 已连接，跳过
        }
    }
    
    // 检查是否已记录但未连接
    for (int i = 0; i < g_server_found_count; i++) {
        if (memcmp(g_server_addrs[i].addr, seek_result_data->addr.addr, SLE_ADDR_LEN) == 0) {
            return; // 已记录，跳过
        }
    }
    
    // 匹配检查
    bool match = false;
    if (seek_result_data->data_length > 0) {
        for (uint16_t i = 0; i < seek_result_data->data_length - 3; i++) {
            if (memcmp(&seek_result_data->data[i], "sle", 3) == 0) {
                match = true;
                break;
            }
        }
    }
    
    if (match) {
        // 记录
        int slot = g_server_found_count;
        memcpy_s(&g_server_addrs[slot], sizeof(sle_addr_t),
                 &seek_result_data->addr, sizeof(sle_addr_t));
        g_server_found_count++;
        
        osal_printk("[SLE] FOUND Server %d/%d: %02x:%02x:%02x:%02x:%02x:%02x, connected=%d\r\n",
            g_server_found_count, MAX_SLE_SERVERS,
            seek_result_data->addr.addr[0], seek_result_data->addr.addr[1],
            seek_result_data->addr.addr[2], seek_result_data->addr.addr[3],
            seek_result_data->addr.addr[4], seek_result_data->addr.addr[5],
            g_sle_uart_conn_num);
        
        // 如果当前没有在连接中的，发起连接
        if (g_sle_uart_conn_num < MAX_SLE_SERVERS) {
            osal_msleep(200);
            errcode_t ret = sle_connect_remote_device(&g_server_addrs[slot]);
            osal_printk("[SLE] Connect to server %d, ret=%d\r\n", slot, ret);
        }
    }
}

static void sle_uart_client_seek_disable_cbk(errcode_t status)
{
    unused(status);
}

static void sle_uart_client_connect_state_changed_cbk(uint16_t conn_id, const sle_addr_t *addr,
    sle_acb_state_t conn_state, sle_pair_state_t pair_state, sle_disc_reason_t disc_reason)
{
    unused(pair_state);
    osal_printk("[SLE] Connect state: conn_id=0x%02x, state=%d, reason=0x%x\r\n", conn_id, conn_state, disc_reason);
    
    if (conn_state == SLE_ACB_STATE_CONNECTED) {
        // 找到空位保存
        int slot = -1;
        for (int i = 0; i < MAX_SLE_SERVERS; i++) {
            if (!g_servers[i].connected) {
                slot = i;
                break;
            }
        }
        
        if (slot < 0) {
            osal_printk("[SLE] No empty slot, disconnect conn_id=0x%02x\r\n", conn_id);
            // 可选：断开多余的连接
            return;
        }
        
        g_servers[slot].conn_id = conn_id;
        memcpy_s(&g_servers[slot].addr, sizeof(sle_addr_t), addr, sizeof(sle_addr_t));
        g_servers[slot].connected = true;
        g_sle_uart_conn_id[slot] = conn_id;
        g_sle_uart_conn_num++;
        
        osal_printk("[SLE] Server %d CONNECTED, conn_id=0x%02x, total=%d\r\n", 
            slot, conn_id, g_sle_uart_conn_num);
        
        // 交换 MTU
        ssap_exchange_info_t info = {0};
        info.mtu_size = 520;
        info.version = 1;
        ssapc_exchange_info_req(0, conn_id, &info);
        
        // 如果还没连满，继续扫描
        if (g_sle_uart_conn_num < MAX_SLE_SERVERS) {
            osal_printk("[SLE] Need more servers, continue scan\r\n");
            // 不停止扫描，继续找
        } else {
            osal_printk("[SLE] All connected, stop seek\r\n");
            sle_stop_seek();
        }
        
    } else if (conn_state == SLE_ACB_STATE_DISCONNECTED) {
        int slot = -1;
        for (int i = 0; i < MAX_SLE_SERVERS; i++) {
            if (g_servers[i].conn_id == conn_id) {
                slot = i;
                g_servers[i].connected = false;
                g_servers[i].conn_id = 0;
                g_servers[i].device_no = 0;
                break;
            }
        }
        
        if (slot >= 0) {
            g_sle_uart_conn_num--;
            osal_printk("[SLE] Server %d DISCONNECTED, remaining=%d\r\n", slot, g_sle_uart_conn_num);
        }
        
        // 全部清空
        g_server_found_count = 0;
        memset(g_server_addrs, 0, sizeof(g_server_addrs));
        
        // 重新扫描
        if (g_sle_uart_conn_num < MAX_SLE_SERVERS) {
            osal_printk("[SLE] Restart scan\r\n");
            sle_stop_seek();
            osal_msleep(100);
            sle_start_seek();
        }
    }
}

static void sle_uart_client_pair_complete_cbk(uint16_t conn_id, const sle_addr_t *addr, errcode_t status)
{
    osal_printk("[SLE] Pair complete: conn_id=%d, status=%d\r\n", conn_id, status);
    if (status == 0) {
        ssap_exchange_info_t info = {0};
        info.mtu_size = 520;
        info.version = 1;
        ssapc_exchange_info_req(0, conn_id, &info);
    }
}

static void sle_uart_client_exchange_info_cbk(uint8_t client_id, uint16_t conn_id,
    ssap_exchange_info_t *param, errcode_t status)
{
    osal_printk("[SLE] Exchange info: conn_id=%d, mtu=%d, status=%d\r\n", conn_id, param->mtu_size, status);
    // 查找服务
    ssapc_find_structure_param_t find_param = {0};
    find_param.type = SSAP_FIND_TYPE_PROPERTY;
    find_param.start_hdl = 1;
    find_param.end_hdl = 0xFFFF;
    ssapc_find_structure(0, conn_id, &find_param);
}

static void sle_uart_client_find_structure_cbk(uint8_t client_id, uint16_t conn_id,
    ssapc_find_service_result_t *service, errcode_t status)
{
    osal_printk("[SLE] Find structure: conn_id=%d, start_hdl=0x%02x, end_hdl=0x%02x, status=%d\r\n",
        conn_id, service->start_hdl, service->end_hdl, status);
}

static void sle_uart_client_find_property_cbk(uint8_t client_id, uint16_t conn_id,
    ssapc_find_property_result_t *property, errcode_t status)
{
    osal_printk("[SLE] Find property: conn_id=%d, handle=%d, status=%d\r\n", conn_id, property->handle, status);
    int slot = find_server_slot_by_conn(conn_id);
    if (slot >= 0) {
        g_servers[slot].write_handle = property->handle;
        osal_printk("[SLE] Server %d write_handle=%d\r\n", slot, property->handle);
    }
    g_sle_uart_send_param.handle = property->handle;
    g_sle_uart_send_param.type = SSAP_PROPERTY_TYPE_VALUE;
}

static void sle_uart_client_find_structure_cmp_cbk(uint8_t client_id, uint16_t conn_id,
    ssapc_find_structure_result_t *structure_result, errcode_t status)
{
    osal_printk("[SLE] Find structure complete: conn_id=%d, type=%d, status=%d\r\n",
        conn_id, structure_result->type, status);
}

static void sle_uart_client_write_cfm_cb(uint8_t client_id, uint16_t conn_id,
    ssapc_write_result_t *write_result, errcode_t status)
{
    osal_printk("[SLE] Write confirm: conn_id=%d, handle=%d, status=%d\r\n",
        conn_id, write_result->handle, status);
}

// ===== 接收 Server 数据 =====
void sle_uart_notification_cb(uint8_t client_id, uint16_t conn_id,
    ssapc_handle_value_t *data, errcode_t status)
{
    unused(client_id);
    unused(status);
    if (data == NULL || data->data == NULL || data->data_len < 11) return;
    
    int slot = find_server_slot_by_conn(conn_id);
    if (slot < 0) {
        osal_printk("[SLE] Unknown conn_id=0x%02x\r\n", conn_id);
        return;
    }
    
    uint8_t *buf = data->data;
    uint16_t lux = (buf[0] << 8) | buf[1];
    uint32_t alcohol = (buf[2] << 24) | (buf[3] << 16) | (buf[4] << 8) | buf[5];
    int t_int = buf[6], t_dec = buf[7];
    int h_int = buf[8], h_dec = buf[9];
    int device_no = buf[10];
    
    // 绑定 device_no
    if (g_servers[slot].device_no == 0 && device_no > 0) {
        g_servers[slot].device_no = device_no;
        osal_printk("[SLE] Slot %d bound to device_no=%d\r\n", slot, device_no);
    }
    
    osal_printk("[Dev%d/conn=0x%02x] lux=%d, alcohol=%d, T=%d.%d, H=%d.%d\r\n",
        device_no, conn_id, lux, alcohol, t_int, t_dec, h_int, h_dec);
    
    // 上传 HTTP
    http_post_data(lux, alcohol, t_int, t_dec, h_int, h_dec, device_no);
}

void sle_uart_indication_cb(uint8_t client_id, uint16_t conn_id,
    ssapc_handle_value_t *data, errcode_t status)
{
    sle_uart_notification_cb(client_id, conn_id, data, status);
}


// ===== 初始化 =====
static void uart_init_pin(void)
{
    if (CONFIG_SLE_UART_BUS == 0) {
        uapi_pin_set_mode(CONFIG_UART_TXD_PIN, PIN_MODE_1);
        uapi_pin_set_mode(CONFIG_UART_RXD_PIN, PIN_MODE_1);
    } else if (CONFIG_SLE_UART_BUS == 1) {
        uapi_pin_set_mode(CONFIG_UART_TXD_PIN, PIN_MODE_1);
        uapi_pin_set_mode(CONFIG_UART_RXD_PIN, PIN_MODE_1);
    }
}

static void uart_init_config(void)
{
    osal_printk("[SLE] uart_init_config start, bus=%d\r\n", CONFIG_SLE_UART_BUS);
    
    uart_attr_t attr = {
        .baud_rate = SLE_UART_BAUDRATE,
        .data_bits = UART_DATA_BIT_8,
        .stop_bits = UART_STOP_BIT_1,
        .parity = UART_PARITY_NONE
    };
    uart_pin_config_t pin_config = {
        .tx_pin = CONFIG_UART_TXD_PIN,
        .rx_pin = CONFIG_UART_RXD_PIN,
        .cts_pin = PIN_NONE,
        .rts_pin = PIN_NONE
    };
    
    osal_printk("[SLE] deinit uart...\r\n");
    uapi_uart_deinit(CONFIG_SLE_UART_BUS);
    
    osal_printk("[SLE] init uart...\r\n");
    errcode_t ret = uapi_uart_init(CONFIG_SLE_UART_BUS, &pin_config, &attr, NULL, &g_app_uart_buffer_config);
    osal_printk("[SLE] uart_init ret=%d\r\n", ret);
}

static void sle_uart_client_seek_cbk_register(void)
{
    sle_announce_seek_callbacks_t seek_cbk = {0};
    seek_cbk.seek_enable_cb = sle_uart_client_seek_enable_cbk;
    seek_cbk.seek_result_cb = sle_uart_client_seek_result_cbk;
    seek_cbk.seek_disable_cb = sle_uart_client_seek_disable_cbk;
    errcode_t ret = sle_announce_seek_register_callbacks(&seek_cbk);
    osal_printk("[SLE] seek cbk register ret=%d\r\n", ret);
}

static void sle_uart_client_connect_cbk_register(void)
{
    sle_connection_callbacks_t conn_cbk = {0};
    conn_cbk.connect_state_changed_cb = sle_uart_client_connect_state_changed_cbk;
    conn_cbk.pair_complete_cb = sle_uart_client_pair_complete_cbk;
    sle_connection_register_callbacks(&conn_cbk);
}

static void sle_uart_client_ssapc_cbk_register(void)
{
    ssapc_callbacks_t ssapc_cbk = {0};
    ssapc_cbk.exchange_info_cb = sle_uart_client_exchange_info_cbk;
    ssapc_cbk.find_structure_cb = sle_uart_client_find_structure_cbk;
    ssapc_cbk.ssapc_find_property_cbk = sle_uart_client_find_property_cbk;
    ssapc_cbk.find_structure_cmp_cb = sle_uart_client_find_structure_cmp_cbk;
    ssapc_cbk.write_cfm_cb = sle_uart_client_write_cfm_cb;
    ssapc_cbk.notification_cb = sle_uart_notification_cb;
    ssapc_cbk.indication_cb = sle_uart_indication_cb;
    ssapc_register_callbacks(&ssapc_cbk);
}

void *sle_uart_client_task(const char *arg)
{
    unused(arg);
    
    osal_printk("[SLE] === TASK ENTRY ===\r\n");
    
    uart_init_pin();
    osal_printk("[SLE] uart_init_pin done\r\n");
    
    uart_init_config();
    osal_printk("[SLE] uart_init_config done\r\n");
    
    osal_printk("[SLE] registering callbacks...\r\n");
    sle_uart_client_seek_cbk_register();
    osal_printk("[SLE] seek cbk registered\r\n");
    
    sle_uart_client_connect_cbk_register();
    osal_printk("[SLE] connect cbk registered\r\n");
    
    sle_uart_client_ssapc_cbk_register();
    osal_printk("[SLE] ssapc cbk registered\r\n");
    
    osal_printk("[SLE] calling enable_sle()...\r\n");
    errcode_t ret = enable_sle();
    osal_printk("[SLE] enable_sle() returned %d\r\n", ret);
    
    if (ret != ERRCODE_SUCC) {
        osal_printk("[SLE] Enable FAIL, ret=%d\r\n", ret);
        return NULL;
    }
    osal_printk("[SLE] Enable SUCCESS\r\n");
    
    osal_msleep(1000);
    osal_printk("[SLE] starting scan...\r\n");
    sle_uart_start_scan();
    osal_printk("[SLE] scan started\r\n");
    
    while (1) {
        osal_msleep(SLE_UART_TASK_DURATION_MS);
    }
    return NULL;
}

static void server_entry(void)
{
    osal_kthread_lock();
    
    // WiFi 任务
    osThreadAttr_t attr = {
        .name = "sta_task",
        .attr_bits = 0U,
        .cb_mem = NULL,
        .cb_size = 0U,
        .stack_mem = NULL,
        .stack_size = WIFI_TASK_STACK_SIZE,
        .priority = WIFI_TASK_PRIO
    };
    if (osThreadNew((osThreadFunc_t)sta_init, NULL, &attr) == NULL)
        PRINT("%s::Create sta_task fail.\r\n", WIFI_STA_LOG);
    else
        PRINT("%s::Create sta_task succ.\r\n", WIFI_STA_LOG);
    
    // SLE Client 任务
    osThreadAttr_t sle_attr = {
        .name = "SLEUartClientTask",
        .attr_bits = 0U,
        .cb_mem = NULL,
        .cb_size = 0U,
        .stack_mem = NULL,
        .stack_size = SLE_UART_TASK_STACK_SIZE,
        .priority = SLE_UART_TASK_PRIO
    };
    if (osThreadNew((osThreadFunc_t)sle_uart_client_task, NULL, &sle_attr) == NULL) {
        osal_printk("[SLE] Create task fail\r\n");
    } else {
        osal_printk("[SLE] Create task succ\r\n");
    }
    
    osal_kthread_unlock();
}

app_run(server_entry);