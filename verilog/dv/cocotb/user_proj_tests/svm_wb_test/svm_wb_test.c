// SPDX-FileCopyrightText: 2024 Adam Handwerger
// SPDX-License-Identifier: Apache-2.0
//
// SVM Wishbone smoke-test firmware.
// The Python cocotb test drives all Wishbone transactions directly;
// this firmware only enables the user-project interface and signals ready.

#include <firmware_apis.h>

void main() {
    ManagmentGpio_outputEnable();
    ManagmentGpio_write(0);
    enableHkSpi(0);

    GPIOs_configureAll(GPIO_MODE_USER_STD_OUT_MONITORED);
    GPIOs_loadConfigs();

    // Enable Wishbone so Python test can read/write user-project registers
    User_enableIF();

    // Signal Python test that firmware setup is done
    ManagmentGpio_write(1);

    return;
}
