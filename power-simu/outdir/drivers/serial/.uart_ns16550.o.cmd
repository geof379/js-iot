cmd_drivers/serial/uart_ns16550.o := ccache /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/iamcu-poky-elfiamcu/i586-poky-elfiamcu-gcc -Wp,-MD,drivers/serial/.uart_ns16550.o.d  -nostdinc -isystem /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/iamcu-poky-elfiamcu/../../lib/iamcu-poky-elfiamcu/gcc/i586-poky-elfiamcu/5.2.1/include -I/home/spoussa/src/iot/zephyr/arch/x86/include -I/home/spoussa/src/iot/zephyr/arch/x86/soc/quark_se -I/home/spoussa/src/iot/zephyr/boards/arduino_101  -I/home/spoussa/src/iot/zephyr/include -I/home/spoussa/src/iot/zephyr/include -I/home/spoussa/src/iot/zephyr/samples/nanokernel/apps/hello_world/outdir/include/generated -I/home/spoussa/src/iot/zephyr/samples/nanokernel/apps/hello_world/outdir/misc/generated/sysgen -include /home/spoussa/src/iot/zephyr/samples/nanokernel/apps/hello_world/outdir/include/generated/autoconf.h  -I/home/spoussa/src/iot/zephyr/lib/libc/minimal/include  -I/home/spoussa/src/iot/zephyr/drivers/serial -Idrivers/serial -DKERNEL -c -g -std=c99 -fno-asynchronous-unwind-tables -fno-omit-frame-pointer -Wall -Wno-format-zero-length -Wno-main -ffreestanding -Os -fno-stack-protector -march=lakemont -mtune=lakemont -msoft-float -miamcu -ffunction-sections -fdata-sections -mpreferred-stack-boundary=2 -mno-sse -Wno-unused-but-set-variable -fno-reorder-functions -fno-defer-pop -Wno-pointer-sign -fno-strict-overflow -Werror=implicit-int   -I/home/spoussa/src/iot/zephyr/include/drivers    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(uart_ns16550)"  -D"KBUILD_MODNAME=KBUILD_STR(uart_ns16550)" -c -o drivers/serial/uart_ns16550.o /home/spoussa/src/iot/zephyr/drivers/serial/uart_ns16550.c

source_drivers/serial/uart_ns16550.o := /home/spoussa/src/iot/zephyr/drivers/serial/uart_ns16550.c

deps_drivers/serial/uart_ns16550.o := \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/uart/ns16550/access/ioport.h) \
    $(wildcard include/config/uart/ns16550/access/mmio.h) \
    $(wildcard include/config/uart/ns16550/dlf.h) \
    $(wildcard include/config/uart/ns16550/pci.h) \
    $(wildcard include/config/pci/enumeration.h) \
    $(wildcard include/config/uart/interrupt/driven.h) \
    $(wildcard include/config/uart/ns16550/line/ctrl.h) \
    $(wildcard include/config/uart/ns16550/drv/cmd.h) \
    $(wildcard include/config/uart/ns16550/port/0.h) \
    $(wildcard include/config/uart/ns16550/port/0/base/addr.h) \
    $(wildcard include/config/uart/ns16550/port/0/clk/freq.h) \
    $(wildcard include/config/uart/ns16550/port/0/pci.h) \
    $(wildcard include/config/uart/ns16550/port/0/pci/class.h) \
    $(wildcard include/config/uart/ns16550/port/0/pci/bus.h) \
    $(wildcard include/config/uart/ns16550/port/0/pci/dev.h) \
    $(wildcard include/config/uart/ns16550/port/0/pci/vendor/id.h) \
    $(wildcard include/config/uart/ns16550/port/0/pci/device/id.h) \
    $(wildcard include/config/uart/ns16550/port/0/pci/func.h) \
    $(wildcard include/config/uart/ns16550/port/0/pci/bar.h) \
    $(wildcard include/config/uart/ns16550/port/0/baud/rate.h) \
    $(wildcard include/config/uart/ns16550/port/0/options.h) \
    $(wildcard include/config/uart/ns16550/port/0/dlf.h) \
    $(wildcard include/config/uart/ns16550/port/0/name.h) \
    $(wildcard include/config/kernel/init/priority/device.h) \
    $(wildcard include/config/uart/ns16550/port/1.h) \
    $(wildcard include/config/uart/ns16550/port/1/base/addr.h) \
    $(wildcard include/config/uart/ns16550/port/1/clk/freq.h) \
    $(wildcard include/config/uart/ns16550/port/1/pci.h) \
    $(wildcard include/config/uart/ns16550/port/1/pci/class.h) \
    $(wildcard include/config/uart/ns16550/port/1/pci/bus.h) \
    $(wildcard include/config/uart/ns16550/port/1/pci/dev.h) \
    $(wildcard include/config/uart/ns16550/port/1/pci/vendor/id.h) \
    $(wildcard include/config/uart/ns16550/port/1/pci/device/id.h) \
    $(wildcard include/config/uart/ns16550/port/1/pci/func.h) \
    $(wildcard include/config/uart/ns16550/port/1/pci/bar.h) \
    $(wildcard include/config/uart/ns16550/port/1/baud/rate.h) \
    $(wildcard include/config/uart/ns16550/port/1/options.h) \
    $(wildcard include/config/uart/ns16550/port/1/dlf.h) \
    $(wildcard include/config/uart/ns16550/port/1/name.h) \
  /home/spoussa/src/iot/zephyr/include/nanokernel.h \
    $(wildcard include/config/nano/timeouts.h) \
    $(wildcard include/config/microkernel.h) \
    $(wildcard include/config/debug/tracing/kernel/objects.h) \
    $(wildcard include/config/thread/custom/data.h) \
    $(wildcard include/config/cplusplus.h) \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/stddef.h \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/bits/null.h \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/bits/size_t.h \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/stdint.h \
  /home/spoussa/src/iot/zephyr/include/toolchain.h \
  /home/spoussa/src/iot/zephyr/include/toolchain/gcc.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/isa/thumb.h) \
    $(wildcard include/config/isa/thumb2.h) \
    $(wildcard include/config/isa/arm.h) \
    $(wildcard include/config/arc.h) \
    $(wildcard include/config/x86.h) \
  /home/spoussa/src/iot/zephyr/include/toolchain/common.h \
  /home/spoussa/src/iot/zephyr/include/kernel_version.h \
  /home/spoussa/src/iot/zephyr/include/sys_clock.h \
    $(wildcard include/config/sys/clock/exists.h) \
    $(wildcard include/config/sys/clock/hw/cycles/per/sec.h) \
    $(wildcard include/config/sys/clock/ticks/per/sec.h) \
    $(wildcard include/config/timer/reads/its/frequency/at/runtime.h) \
  /home/spoussa/src/iot/zephyr/include/drivers/rand32.h \
  /home/spoussa/src/iot/zephyr/include/misc/dlist.h \
  /home/spoussa/src/iot/zephyr/include/arch/cpu.h \
  /home/spoussa/src/iot/zephyr/include/arch/x86/arch.h \
    $(wildcard include/config/num/dynamic/stubs.h) \
    $(wildcard include/config/max/num/task/irqs.h) \
    $(wildcard include/config/nanokernel.h) \
    $(wildcard include/config/num/dynamic/exc/stubs.h) \
    $(wildcard include/config/num/dynamic/exc/noerr/stubs.h) \
    $(wildcard include/config/x86/iamcu.h) \
    $(wildcard include/config/sse.h) \
    $(wildcard include/config/mvic.h) \
    $(wildcard include/config/int/latency/benchmark.h) \
    $(wildcard include/config/fp/sharing.h) \
  /home/spoussa/src/iot/zephyr/include/arch/x86/asm_inline.h \
  /home/spoussa/src/iot/zephyr/include/arch/x86/asm_inline_gcc.h \
    $(wildcard include/config/cmov.h) \
  /home/spoussa/src/iot/zephyr/include/sys_io.h \
  /home/spoussa/src/iot/zephyr/include/arch/x86/addr_types.h \
  /home/spoussa/src/iot/zephyr/include/arch/x86/segselect.h \
  /home/spoussa/src/iot/zephyr/boards/arduino_101/board.h \
  /home/spoussa/src/iot/zephyr/arch/x86/soc/quark_se/soc.h \
    $(wildcard include/config/ioapic.h) \
    $(wildcard include/config/uart/irq/falling/edge.h) \
    $(wildcard include/config/uart/irq/rising/edge.h) \
    $(wildcard include/config/uart/irq/level/high.h) \
    $(wildcard include/config/uart/irq/level/low.h) \
    $(wildcard include/config/uart/ns16550.h) \
  /home/spoussa/src/iot/zephyr/include/misc/util.h \
  /home/spoussa/src/iot/zephyr/include/uart.h \
    $(wildcard include/config/uart/line/ctrl.h) \
    $(wildcard include/config/uart/drv/cmd.h) \
  /home/spoussa/src/iot/zephyr/include/device.h \
    $(wildcard include/config/kernel/init/priority/default.h) \
    $(wildcard include/config/num/task/priorities.h) \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/stdbool.h \
  /home/spoussa/src/iot/zephyr/include/drivers/ioapic.h \
  /home/spoussa/src/iot/zephyr/include/drivers/loapic.h \
    $(wildcard include/config/eoi/forwarding/bug.h) \
    $(wildcard include/config/loapic/base/address.h) \
  /home/spoussa/src/iot/zephyr/include/init.h \
  /home/spoussa/src/iot/zephyr/include/sections.h \
    $(wildcard include/config/gdb/info.h) \
    $(wildcard include/config/sw/isr/table.h) \
  /home/spoussa/src/iot/zephyr/include/section_tags.h \
  /home/spoussa/src/iot/zephyr/drivers/serial/uart_ns16550.h \

drivers/serial/uart_ns16550.o: $(deps_drivers/serial/uart_ns16550.o)

$(deps_drivers/serial/uart_ns16550.o):