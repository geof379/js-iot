cmd_scripts/gen_offset_header/gen_offset_header.o := gcc -Wp,-MD,scripts/gen_offset_header/.gen_offset_header.o.d -Iscripts/gen_offset_header -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89 -DKERNEL_VERSION=0 -Wall -Werror -g -m32 -c -o scripts/gen_offset_header/gen_offset_header.o /home/spoussa/src/iot/zephyr/scripts/gen_offset_header/gen_offset_header.c

source_scripts/gen_offset_header/gen_offset_header.o := /home/spoussa/src/iot/zephyr/scripts/gen_offset_header/gen_offset_header.c

deps_scripts/gen_offset_header/gen_offset_header.o := \
  /usr/include/stdc-predef.h \
  /usr/include/unistd.h \
  /usr/include/features.h \
  /usr/include/sys/cdefs.h \
  /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h \
  /usr/include/gnu/stubs-32.h \
  /usr/include/bits/posix_opt.h \
  /usr/include/bits/environments.h \
  /usr/include/bits/types.h \
  /usr/include/bits/typesizes.h \
  /usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h \
  /usr/include/bits/confname.h \
  /usr/include/getopt.h \
  /usr/include/bits/unistd.h \
  /usr/include/stdio.h \
  /usr/include/libio.h \
  /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib/gcc/x86_64-linux-gnu/4.9/include/stdarg.h \
  /usr/include/bits/stdio_lim.h \
  /usr/include/bits/sys_errlist.h \
  /usr/include/bits/stdio.h \
  /usr/include/bits/stdio2.h \
  /usr/include/sys/types.h \
  /usr/include/time.h \
  /usr/include/endian.h \
  /usr/include/bits/endian.h \
  /usr/include/bits/byteswap.h \
  /usr/include/bits/byteswap-16.h \
  /usr/include/sys/select.h \
  /usr/include/bits/select.h \
  /usr/include/bits/sigset.h \
  /usr/include/bits/time.h \
  /usr/include/bits/select2.h \
  /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h \
  /usr/include/sys/stat.h \
  /usr/include/bits/stat.h \
  /usr/include/fcntl.h \
  /usr/include/bits/fcntl.h \
  /usr/include/bits/fcntl-linux.h \
  /usr/include/bits/fcntl2.h \
  /home/spoussa/src/iot/zephyr/scripts/gen_offset_header/elf.h \
  /usr/include/stdlib.h \
  /usr/include/bits/waitflags.h \
  /usr/include/bits/waitstatus.h \
  /usr/include/alloca.h \
  /usr/include/bits/stdlib-bsearch.h \
  /usr/include/bits/stdlib-float.h \
  /usr/include/bits/stdlib.h \
  /usr/include/string.h \
  /usr/include/xlocale.h \
  /usr/include/bits/string.h \
  /usr/include/bits/string2.h \
  /usr/include/bits/string3.h \
  /usr/include/errno.h \
  /usr/include/bits/errno.h \
  /usr/include/linux/errno.h \
  /usr/include/asm/errno.h \
  /usr/include/asm-generic/errno.h \
  /usr/include/asm-generic/errno-base.h \

scripts/gen_offset_header/gen_offset_header.o: $(deps_scripts/gen_offset_header/gen_offset_header.o)

$(deps_scripts/gen_offset_header/gen_offset_header.o):
