cmd_arch/x86/core/cache.o := ccache /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-elf/i586-poky-elf-gcc -Wp,-MD,arch/x86/core/.cache.o.d  -nostdinc -isystem /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/lib/i586-poky-elf/gcc/i586-poky-elf/5.2.0/include -I/home/spoussa/src/iot/zephyr/arch/x86/include -I/home/spoussa/src/iot/zephyr/arch/x86/soc/ia32 -I/home/spoussa/src/iot/zephyr/boards/qemu_x86  -I/home/spoussa/src/iot/zephyr/include -I/home/spoussa/src/iot/zephyr/include -I/home/spoussa/src/iot/js-iot/power-simu/outdir/include/generated -I/home/spoussa/src/iot/js-iot/power-simu/outdir/misc/generated/sysgen -include /home/spoussa/src/iot/js-iot/power-simu/outdir/include/generated/autoconf.h  -I/home/spoussa/src/iot/zephyr/lib/libc/minimal/include  -I/home/spoussa/src/iot/zephyr/arch/x86/core -Iarch/x86/core -DKERNEL -c -g -std=c99 -fno-asynchronous-unwind-tables -fno-omit-frame-pointer -Wall -Wno-format-zero-length -Wno-main -ffreestanding -Os -fno-stack-protector -march=pentium -ffunction-sections -fdata-sections -mpreferred-stack-boundary=2 -mno-sse -Wno-unused-but-set-variable -fno-reorder-functions -fno-defer-pop -Wno-pointer-sign -fno-strict-overflow -Werror=implicit-int   -I/home/spoussa/src/iot/zephyr/kernel/nanokernel/include   -I/home/spoussa/src/iot/zephyr/kernel/microkernel/include    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(cache)"  -D"KBUILD_MODNAME=KBUILD_STR(cache)" -c -o arch/x86/core/cache.o /home/spoussa/src/iot/zephyr/arch/x86/core/cache.c

source_arch/x86/core/cache.o := /home/spoussa/src/iot/zephyr/arch/x86/core/cache.c

deps_arch/x86/core/cache.o := \
    $(wildcard include/config/clflush/instruction/supported.h) \
    $(wildcard include/config/clflush/detect.h) \
    $(wildcard include/config/cache/line/size.h) \
    $(wildcard include/config/cache/line/size/detect.h) \
    $(wildcard include/config/kernel/init/priority/default.h) \
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
    $(wildcard include/config/debug/irqs.h) \
  /home/spoussa/src/iot/zephyr/include/irq.h \
  /home/spoussa/src/iot/zephyr/include/arch/x86/asm_inline.h \
  /home/spoussa/src/iot/zephyr/include/arch/x86/asm_inline_gcc.h \
    $(wildcard include/config/cmov.h) \
  /home/spoussa/src/iot/zephyr/include/sys_io.h \
  /home/spoussa/src/iot/zephyr/include/arch/x86/addr_types.h \
  /home/spoussa/src/iot/zephyr/include/arch/x86/segselect.h \
  /home/spoussa/src/iot/zephyr/include/misc/util.h \
  /home/spoussa/src/iot/zephyr/include/cache.h \
    $(wildcard include/config/cache/flushing.h) \
    $(wildcard include/config/arch/cache/flush/detect.h) \
  /home/spoussa/src/iot/zephyr/arch/x86/include/cache_private.h \
  /home/spoussa/src/iot/zephyr/include/init.h \
    $(wildcard include/config/device/power/management.h) \
  /home/spoussa/src/iot/zephyr/include/device.h \
    $(wildcard include/config/num/task/priorities.h) \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/errno.h \
  /home/spoussa/src/iot/zephyr/lib/libc/minimal/include/stdbool.h \

arch/x86/core/cache.o: $(deps_arch/x86/core/cache.o)

$(deps_arch/x86/core/cache.o):
