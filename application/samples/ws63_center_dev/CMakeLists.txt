    set(SOURCES_LIST
        ${CMAKE_CURRENT_SOURCE_DIR}/src/main.c
        ${CMAKE_CURRENT_SOURCE_DIR}/sle_uart_client/sle_uart_client.c

    )
    set(HEADER_LIST ${CMAKE_CURRENT_SOURCE_DIR}/sle_uart_client)
    set(PUBLIC_HEADER_LIST
        ${CMAKE_CURRENT_SOURCE_DIR}/include
    )

    set(SOURCES "${SOURCES_LIST}" PARENT_SCOPE)
    set(PUBLIC_HEADER "${PUBLIC_HEADER_LIST}" ${HEADER_LIST} PARENT_SCOPE)