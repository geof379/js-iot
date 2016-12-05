cmd_scripts/gen_idt/version.o := gcc -Wp,-MD,scripts/gen_idt/.version.o.d -Iscripts/gen_idt -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89 -DKERNEL_VERSION=0 -Wall -Werror -g -m32 -c -o scripts/gen_idt/version.o /home/spoussa/src/iot/zephyr/scripts/gen_idt/version.c

source_scripts/gen_idt/version.o := /home/spoussa/src/iot/zephyr/scripts/gen_idt/version.c

deps_scripts/gen_idt/version.o := \
  /usr/include/stdc-predef.h \
  /usr/include/stdio.h \
  /usr/include/features.h \
  /usr/include/sys/cdefs.h \
  /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h \
  /usr/include/gnu/stubs-32.h \
  /usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h \
  /usr/include/bits/types.h \
  /usr/include/bits/typesizes.h \
  /usr/include/libio.h \
  /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib/gcc/x86_64-linux-gnu/4.9/include/stdarg.h \
  /usr/include/bits/stdio_lim.h \
  /usr/include/bits/sys_errlist.h \
  /usr/include/bits/stdio.h \
  /usr/include/bits/stdio2.h \
  /home/spoussa/src/iot/zephyr/scripts/gen_idt/version.h \

scripts/gen_idt/version.o: $(deps_scripts/gen_idt/version.o)

$(deps_scripts/gen_idt/version.o):
