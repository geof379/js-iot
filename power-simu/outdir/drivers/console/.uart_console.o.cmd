cmd_drivers/console/uart_console.o := ccache /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/iamcu-poky-elfiamcu/i586-poky-elfiamcu-gcc -Wp,-MD,drivers/console/.uart_console.o.d  -nostdinc -isystem /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/iamcu-poky-elfiamcu/../../lib/iamcu-poky-elfiamcu/gcc/i586-poky-elfiamcu/5.2.1/include -I/home/spoussa/src/iot/zephyr/arch/x86/include -I/home/spoussa/src/iot/zephyr/arch/x86/soc/quark_se -I/home/spoussa/src/iot/zephyr/boards/arduino_101  -I/home/spoussa/src/iot/zephyr/include -I/home/spoussa/src/iot/zephyr/include -I/home/spoussa/src/iot/zephyr/samples/nanokernel/apps/hello_world/outdir/include/generated -I/home/spoussa/src/iot/zephyr/samples/nanokernel/apps/hello_world/outdir/misc/generated/sysgen -include /home/spoussa/src/iot/zephyr/samples/nanokernel/apps/hello_world/outdir/include/generated/autoconf.h  -I/home/spoussa/src/iot/zephyr/lib/libc/minimal/include  -I/home/spoussa/src/iot/zephyr/drivers/console -Idrivers/console -DKERNEL -c -g -std=c99 -fno-asynchronous-unwind-tables -fno-omit-frame-pointer -Wall -Wno-format-zero-length -Wno-main -ffreestanding -Os -fno-stack-protector -march=lakemont -mtune=lakemont -msoft-float -miamcu -ffunction-sections -fdata-sections -mpreferred-stack-boundary=2 -mno-sse -Wno-unused-but-set-variable -fno-reorder-functions -fno-defer-pop -Wno-pointer-sign -fno-strict-overflow -Werror=implicit-int   -I/home/spoussa/src/iot/zephyr/include/drivers    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(uart_console)"  -D"KBUILD_MODNAME=KBUILD_STR(uart_console)" -c -o drivers/console/uart_console.o /home/spoussa/src/iot/zephyr/drivers/console/uart_console.c

source_drivers/console/uart_console.o := /home/spoussa/src/iot/zephyr/drivers/console/uart_console.c

deps_drivers/console/uart_console.o := \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/stdout/console.h) \
    $(wildcard include/config/console/handler.h) \
    $(wildcard include/config/uart/console/irq.h) \
    $(wildcard include/config/uart/console/irq/pri.h) \
    $(wildcard include/config/uart/console/on/dev/name.h) \
    $(wildcard include/config/early/console.h) \
    $(wildcard include/config/uart/console/priority.h) \
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
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/stdio.h \
  /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/lib/iamcu-poky-elfiamcu/gcc/i586-poky-elfiamcu/5.2.1/include/stdarg.h \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/bits/restrict.h \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/errno.h \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/ctype.h \
  /home/spoussa/src/iot/zephyr/include/device.h \
    $(wildcard include/config/kernel/init/priority/default.h) \
    $(wildcard include/config/num/task/priorities.h) \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/stdbool.h \
  /home/spoussa/src/iot/zephyr/include/init.h \
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
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/uart/interrupt/driven.h) \
    $(wildcard include/config/uart/line/ctrl.h) \
    $(wildcard include/config/uart/drv/cmd.h) \
  /home/spoussa/src/iot/zephyr/include/drivers/ioapic.h \
  /home/spoussa/src/iot/zephyr/include/drivers/loapic.h \
    $(wildcard include/config/eoi/forwarding/bug.h) \
    $(wildcard include/config/loapic/base/address.h) \
  /home/spoussa/src/iot/zephyr/include/drivers/console/uart_console.h \
  /home/spoussa/src/iot/zephyr/include/sections.h \
    $(wildcard include/config/gdb/info.h) \
    $(wildcard include/config/sw/isr/table.h) \
  /home/spoussa/src/iot/zephyr/include/section_tags.h \
  /home/spoussa/src/iot/zephyr/include/atomic.h \
  /home/spoussa/src/iot/zephyr/include/misc/printk.h \

drivers/console/uart_console.o: $(deps_drivers/console/uart_console.o)

$(deps_drivers/console/uart_console.o):