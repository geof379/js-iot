cmd_arch/x86/core/atomic.o := ccache /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-elf/i586-poky-elf-gcc -Wp,-MD,arch/x86/core/.atomic.o.d  -nostdinc -isystem /opt/zephyr-sdk/sysroots/i686-pokysdk-linux/usr/lib/i586-poky-elf/gcc/i586-poky-elf/5.2.0/include -I/home/spoussa/src/iot/zephyr/arch/x86/include -I/home/spoussa/src/iot/zephyr/arch/x86/soc/ia32 -I/home/spoussa/src/iot/zephyr/boards/qemu_x86  -I/home/spoussa/src/iot/zephyr/include -I/home/spoussa/src/iot/zephyr/include -I/home/spoussa/src/iot/js-iot/power-simu/outdir/include/generated -I/home/spoussa/src/iot/js-iot/power-simu/outdir/misc/generated/sysgen -include /home/spoussa/src/iot/js-iot/power-simu/outdir/include/generated/autoconf.h  -I/home/spoussa/src/iot/zephyr/lib/libc/minimal/include  -I/home/spoussa/src/iot/zephyr/arch/x86/core -Iarch/x86/core -DKERNEL -c -g -std=c99 -fno-asynchronous-unwind-tables -fno-omit-frame-pointer -Wall -Wno-format-zero-length -Wno-main -ffreestanding -Os -fno-stack-protector -march=pentium -ffunction-sections -fdata-sections -mpreferred-stack-boundary=2 -mno-sse -Wno-unused-but-set-variable -fno-reorder-functions -fno-defer-pop -Wno-pointer-sign -fno-strict-overflow -Werror=implicit-int   -I/home/spoussa/src/iot/zephyr/kernel/nanokernel/include   -I/home/spoussa/src/iot/zephyr/kernel/microkernel/include    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(atomic)"  -D"KBUILD_MODNAME=KBUILD_STR(atomic)" -c -o arch/x86/core/atomic.o /home/spoussa/src/iot/zephyr/arch/x86/core/atomic.c

source_arch/x86/core/atomic.o := /home/spoussa/src/iot/zephyr/arch/x86/core/atomic.c

deps_arch/x86/core/atomic.o := \
  /home/spoussa/src/iot/zephyr/include/atomic.h \
  /home/spoussa/src/iot/zephyr/include/toolchain.h \
  /home/spoussa/src/iot/zephyr/include/toolchain/gcc.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/isa/thumb.h) \
    $(wildcard include/config/isa/thumb2.h) \
    $(wildcard include/config/isa/arm.h) \
    $(wildcard include/config/arc.h) \
    $(wildcard include/config/x86.h) \
  /home/spoussa/src/iot/zephyr/include/toolchain/common.h \

arch/x86/core/atomic.o: $(deps_arch/x86/core/atomic.o)

$(deps_arch/x86/core/atomic.o):
