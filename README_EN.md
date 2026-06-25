# StarDrug-IoT

<p align="center">
  <a href="./README.md">简体中文</a> |
  <a href="./README_EN.md">English</a>
</p>

<p align="center">
  Smart Medicine Monitoring System Based on WS63 and SparkLink SLE
</p>

---

## Overview

StarDrug-IoT is a distributed medicine cabinet monitoring system built on the **WS63** platform and **SparkLink Low Energy (SLE)** technology.

The project demonstrates a complete IoT workflow, including:

* Sensor data acquisition
* Multi-node wireless communication via SparkLink SLE
* Data aggregation and processing
* Cloud data uploading through HTTP
* Remote monitoring via a web dashboard

The system adopts a **1 Master + 2 Slave** architecture, where multiple sensor nodes collect environmental information and transmit data to a central controller through SLE.

---

## Why This Project?

Currently, open-source projects based on **SparkLink (StarFlash) SLE** are still limited, especially complete end-to-end examples covering:

Sensor → Wireless Communication → Cloud Platform → Web Visualization

This project provides a practical reference implementation for developers interested in:

* SparkLink SLE development
* WS63 embedded systems
* CMSIS-RTOS applications
* IoT cloud integration
* Multi-node wireless communication

---

## Features

### Embedded Development

* WS63 embedded platform
* GPIO, UART, PWM, I2C, SPI drivers
* Sensor integration and communication
* SparkLink SLE protocol development

### Multi-Node SLE Communication

* Master-slave wireless architecture
* Multiple sensor nodes
* Data aggregation and parsing
* Low-latency wireless transmission

### CMSIS-RTOS Multithreading

* Task scheduling based on CMSIS-RTOS
* Independent acquisition, communication, and upload tasks
* Improved system responsiveness
* Resource conflict reduction

### Cloud Integration

* HTTP-based cloud communication
* Django backend server
* JSON data exchange
* Real-time data synchronization

### Web Monitoring

* Remote device monitoring
* Real-time environmental data display
* Centralized management dashboard

---

## System Architecture

```text
Slave Node A (Cabinet 1)
        |
        | SLE
        |
Slave Node B (Cabinet 2)
        |
        v
+----------------------+
|  Master Node (WS63)  |
| Data Aggregation Hub |
+----------------------+
          |
          | HTTP
          v
+----------------------+
|   Django Server      |
+----------------------+
          |
          v
+----------------------+
|   Web Dashboard      |
+----------------------+
```

---

## Project Structure

```text
application/samples/

├── ws63_center_dev
│   └── Master Node
│       - SLE Receiver
│       - WiFi Connection
│       - HTTP Upload

├── ws63_node_1
│   └── Slave Node 1
│       - Sensor Acquisition
│       - SLE Transmission

├── ws63_node_2
│   └── Slave Node 2
│       - Sensor Acquisition
│       - SLE Transmission

└── CMakeLists.txt
```

---

## Quick Start

### Build Master Node

Edit:

```text
application/samples/CMakeLists.txt
```

Enable:

```cmake
add_subdirectory_if_exist(ws63_center_dev)

# add_subdirectory_if_exist(ws63_node_1)

# add_subdirectory_if_exist(ws63_node_2)
```

### Build Slave Node 1

```cmake
# add_subdirectory_if_exist(ws63_center_dev)

add_subdirectory_if_exist(ws63_node_1)

# add_subdirectory_if_exist(ws63_node_2)
```

### Build Firmware

```bash
~/project/smart_cabinet-main/build.py -c ws63-liteos-app
```

---

## Technology Stack

### Embedded Side

* WS63
* C
* CMake
* CMSIS-RTOS
* SparkLink SLE
* UART
* GPIO
* I2C
* SPI

### Backend

* Django
* HTTP
* REST API
* JSON

### Frontend

* Web Dashboard

---

## Highlights

* Complete SparkLink SLE communication example
* Distributed embedded system architecture
* Multi-node wireless data transmission
* End-to-end IoT solution
* Cloud-connected embedded application
* CMSIS-RTOS multithreaded design
* Practical WS63 development project

---

## Application Scenarios

* Smart medicine cabinet monitoring
* Pharmaceutical storage supervision
* Multi-cabinet environmental monitoring
* Remote IoT device management
* Industrial wireless sensing systems

---

## Future Work

* Add more sensor nodes
* MQTT cloud integration
* Mobile application support
* Historical data analysis
* Alarm and notification system

---

## License

This project is released under the MIT License.

---

## Acknowledgements

* Huawei SparkLink (StarFlash) Ecosystem
* WS63 Development Platform
* CMSIS-RTOS
* Django Community

---

## Star History

If this project helps you, please consider giving it a ⭐ Star.

Your support motivates future development and maintenance.
