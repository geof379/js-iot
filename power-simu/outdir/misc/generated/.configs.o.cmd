cmd_misc/generated/configs.o := ccache /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/iamcu-poky-elfiamcu/i586-poky-elfiamcu-gcc -Wp,-MD,misc/generated/.configs.o.d  -nostdinc -isystem /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/iamcu-poky-elfiamcu/../../lib/iamcu-poky-elfiamcu/gcc/i586-poky-elfiamcu/5.2.1/include -I/home/spoussa/src/iot/zephyr/arch/x86/include -I/home/spoussa/src/iot/zephyr/arch/x86/soc/quark_se -I/home/spoussa/src/iot/zephyr/boards/arduino_101  -I/home/spoussa/src/iot/zephyr/include -I/home/spoussa/src/iot/zephyr/include -I/home/spoussa/src/iot/zephyr/samples/nanokernel/apps/hello_world/outdir/include/generated -I/home/spoussa/src/iot/zephyr/samples/nanokernel/apps/hello_world/outdir/misc/generated/sysgen -include /home/spoussa/src/iot/zephyr/samples/nanokernel/apps/hello_world/outdir/include/generated/autoconf.h  -I/home/spoussa/src/iot/zephyr/lib/libc/minimal/include  -I/home/spoussa/src/iot/zephyr/misc/generated -Imisc/generated -DKERNEL -c -g -std=c99 -fno-asynchronous-unwind-tables -fno-omit-frame-pointer -Wall -Wno-format-zero-length -Wno-main -ffreestanding -Os -fno-stack-protector -march=lakemont -mtune=lakemont -msoft-float -miamcu -ffunction-sections -fdata-sections -mpreferred-stack-boundary=2 -mno-sse -Wno-unused-but-set-variable -fno-reorder-functions -fno-defer-pop -Wno-pointer-sign -fno-strict-overflow -Werror=implicit-int    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(configs)"  -D"KBUILD_MODNAME=KBUILD_STR(configs)" -c -o misc/generated/configs.o misc/generated/configs.c

source_misc/generated/configs.o := misc/generated/configs.c

deps_misc/generated/configs.o := \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/uart/console/on/dev/name.h) \
    $(wildcard include/config/pinmux/num/pins.h) \
    $(wildcard include/config/x86/iamcu.h) \
    $(wildcard include/config/loapic/timer/irq/priority.h) \
    $(wildcard include/config/mem/safe/check/boundaries.h) \
    $(wildcard include/config/soc/quark/se.h) \
    $(wildcard include/config/uart/ns16550/port/1/name.h) \
    $(wildcard include/config/kernel/bin/name.h) \
    $(wildcard include/config/uart/ns16550/port/0/clk/freq.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/num/dynamic/exc/noerr/stubs.h) \
    $(wildcard include/config/arch.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/uart/ns16550/port/0/base/addr.h) \
    $(wildcard include/config/uart/ns16550/port/1/irq.h) \
    $(wildcard include/config/uart/ns16550/port/0/options.h) \
    $(wildcard include/config/num/dynamic/exc/stubs.h) \
    $(wildcard include/config/serial/has/driver.h) \
    $(wildcard include/config/nanokernel.h) \
    $(wildcard include/config/console/has/driver.h) \
    $(wildcard include/config/mem/safe/num/extra/regions.h) \
    $(wildcard include/config/arch/defconfig.h) \
    $(wildcard include/config/uart/ns16550.h) \
    $(wildcard include/config/sys/clock/hw/cycles/per/sec.h) \
    $(wildcard include/config/ioapic.h) \
    $(wildcard include/config/uart/ns16550/port/0/name.h) \
    $(wildcard include/config/i2c/init/priority.h) \
    $(wildcard include/config/exception/debug.h) \
    $(wildcard include/config/eoi/forwarding/bug.h) \
    $(wildcard include/config/ipm/quark/se.h) \
    $(wildcard include/config/compiler/opt.h) \
    $(wildcard include/config/uart/console/irq.h) \
    $(wildcard include/config/loapic/timer.h) \
    $(wildcard include/config/ioapic/num/rtes.h) \
    $(wildcard include/config/ipm/quark/se/master.h) \
    $(wildcard include/config/uart/console/irq/pri.h) \
    $(wildcard include/config/nano/timers.h) \
    $(wildcard include/config/uart/ns16550/port/1/irq/pri.h) \
    $(wildcard include/config/toolchain/variant.h) \
    $(wildcard include/config/loapic/base/address.h) \
    $(wildcard include/config/board.h) \
    $(wildcard include/config/cache/line/size/detect.h) \
    $(wildcard include/config/console.h) \
    $(wildcard include/config/idt/num/vectors.h) \
    $(wildcard include/config/xip.h) \
    $(wildcard include/config/pinmux.h) \
    $(wildcard include/config/uart/ns16550/port/1.h) \
    $(wildcard include/config/ipm.h) \
    $(wildcard include/config/uart/ns16550/port/1/baud/rate.h) \
    $(wildcard include/config/isr/stack/size.h) \
    $(wildcard include/config/uart/ns16550/access/mmio.h) \
    $(wildcard include/config/ram/size.h) \
    $(wildcard include/config/sys/clock/exists.h) \
    $(wildcard include/config/loapic/timer/irq.h) \
    $(wildcard include/config/phys/load/addr.h) \
    $(wildcard include/config/max/irq/lines.h) \
    $(wildcard include/config/serial.h) \
    $(wildcard include/config/uart/ns16550/port/0/irq/pri.h) \
    $(wildcard include/config/pinmux/init/priority.h) \
    $(wildcard include/config/quark/se/ipm/console/ring/buf/size32.h) \
    $(wildcard include/config/phys/ram/addr.h) \
    $(wildcard include/config/minimal/libc.h) \
    $(wildcard include/config/errno.h) \
    $(wildcard include/config/ioapic/base/address.h) \
    $(wildcard include/config/loapic.h) \
    $(wildcard include/config/nested/interrupts.h) \
    $(wildcard include/config/spi/dw/init/priority.h) \
    $(wildcard include/config/sys/clock/ticks/per/sec.h) \
    $(wildcard include/config/pinmux/base.h) \
    $(wildcard include/config/bootloader/unknown.h) \
    $(wildcard include/config/kernel/init/priority/default.h) \
    $(wildcard include/config/ipm/console/priority.h) \
    $(wildcard include/config/main/stack/size.h) \
    $(wildcard include/config/kernel/init/priority/device.h) \
    $(wildcard include/config/uart/ns16550/port/0.h) \
    $(wildcard include/config/cache/line/size.h) \
    $(wildcard include/config/uart/ns16550/port/1/clk/freq.h) \
    $(wildcard include/config/system/clock/init/priority.h) \
    $(wildcard include/config/rom/size.h) \
    $(wildcard include/config/uart/ns16550/port/1/base/addr.h) \
    $(wildcard include/config/cpu/minuteia.h) \
    $(wildcard include/config/gpio/dw/init/priority.h) \
    $(wildcard include/config/uart/ns16550/port/0/irq.h) \
    $(wildcard include/config/num/dynamic/stubs.h) \
    $(wildcard include/config/uart/ns16550/port/0/baud/rate.h) \
    $(wildcard include/config/uart/console/priority.h) \
    $(wildcard include/config/ipm/console/receiver.h) \
    $(wildcard include/config/cross/compile.h) \
    $(wildcard include/config/soc.h) \
    $(wildcard include/config/board/arduino/101.h) \
    $(wildcard include/config/uart/ns16550/port/1/options.h) \
    $(wildcard include/config/uart/console.h) \
    $(wildcard include/config/isa/ia32.h) \
  /home/spoussa/src/iot/zephyr/include/toolchain.h \
  /home/spoussa/src/iot/zephyr/include/toolchain/gcc.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/isa/thumb.h) \
    $(wildcard include/config/isa/thumb2.h) \
    $(wildcard include/config/isa/arm.h) \
    $(wildcard include/config/arc.h) \
  /home/spoussa/src/iot/zephyr/include/toolchain/common.h \

misc/generated/configs.o: $(deps_misc/generated/configs.o)

$(deps_misc/generated/configs.o):