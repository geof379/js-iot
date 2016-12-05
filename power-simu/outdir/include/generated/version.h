#ifndef _KERNEL_VERSION_H_
#define _KERNEL_VERSION_H_

#define ZEPHYR_VERSION_CODE 66048
#define ZEPHYR_VERSION(a,b,c) (((a) << 16) + ((b) << 8) + (c))

#define KERNELVERSION \
0x01020000
#define KERNEL_VERSION_NUMBER     0x010200
#define KERNEL_VERSION_MAJOR      1
#define KERNEL_VERSION_MINOR      2
#define KERNEL_PATCHLEVEL         0
#define KERNEL_VERSION_STRING     "1.2.0-rc2"

#endif /* _KERNEL_VERSION_H_ */
