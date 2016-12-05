#include <stdio.h>
#include <string.h>
#include <device.h>
#include <uart.h>
#include <zephyr.h>

K_FIFO_DEFINE(rx_fifo);

#define BUF_SIZE  256
#define BUF_COUNT 8

static struct device *uart_dev;

typedef struct uart_buf {
    uint32_t fifo_reserverd;
    uint8_t  data[BUF_SIZE];
    uint32_t len;
} uart_buf_t;

uart_buf_t buf_pool[BUF_COUNT];

static volatile int pool_index = 0;

static uint8_t rx_buffer[BUF_SIZE];

static void interrupt_handler(struct device *unused)
{
    while (uart_irq_update(uart_dev) && uart_irq_is_pending(uart_dev)) {

        if (uart_irq_rx_ready(uart_dev)) {
                    
            int len = uart_fifo_read(uart_dev, rx_buffer, sizeof(rx_buffer));
            if (len == 0) {
                printf("RX data ZERO\n");
                continue;
            }
            else {
                uart_buf_t *rx_buf = &buf_pool[pool_index];
                memcpy(rx_buf->data, rx_buffer, len);
                rx_buf->len = len;
                printf("FIFO put (%d): %d bytes\n", pool_index, len);
                k_fifo_put(&rx_fifo, rx_buf);
                pool_index++;
                if (pool_index == BUF_COUNT)
                    pool_index = 0;
            }
        }
        else {
            printf("ISR: spurious\n");
            break;
        }
    }
}

int send_data(struct device *dev, const void* pBuffer, uint32_t lengthInBytes) {

    printf("sending %d bytes ... ", lengthInBytes);
    const uint8_t *buffer = (const uint8_t*)(pBuffer);
    while (lengthInBytes--)
        uart_poll_out(dev, *buffer++);

    printf("done\n");
    return 0;
}

void fill_data(uint8_t *p, uint8_t len)
{
    for (uint8_t i = 0; i < len; i++)
        p[i] = i;
}

void read_and_echo_data(struct device *dev)
{
    uart_buf_t *rx_buf;

    while(true) {
        rx_buf = k_fifo_get(&rx_fifo, K_FOREVER);
        if (rx_buf != NULL) {
            printf("FIFO get: %d bytes [%d]\n", rx_buf->len, rx_buf->data[0]);
            
            uint8_t len = rx_buf->len;
            if (rx_buf->data[0] != 0) {
                len = rx_buf->data[0];
                fill_data(rx_buf->data, len);
            }
            send_data(dev, rx_buf->data, len);
        }
    }
}

int main(int argc, char const *argv[])
{
    int ret;

    printf("start buffers: %d, size=%d total size=%d\n",
        sizeof(buf_pool)/sizeof(uart_buf_t), sizeof(uart_buf_t), sizeof(buf_pool));

    uart_dev = device_get_binding(CONFIG_CDC_ACM_PORT_NAME);

    if (uart_dev == NULL) {
        printf("%s: error\n", __FUNCTION__);
        return 0;
    }
 
    ret = uart_line_ctrl_set(uart_dev, LINE_CTRL_BAUD_RATE, 115200);
    if (ret)
        printf("Baudrate set failed %d\n", ret);

    k_sleep(1000);

    uart_irq_rx_disable(uart_dev);
    uart_irq_tx_disable(uart_dev);

    /* drain the fifo */
    uint8_t c;
    while(uart_fifo_read(uart_dev, &c, 1)) {
        continue;
    }

    uart_irq_callback_set(uart_dev, interrupt_handler);
    uart_irq_rx_enable(uart_dev);

    read_and_echo_data(uart_dev);

	return 0;
}