## Example kernel module Makefile
## By default will build a module for the current kernel.

LINUX_BLD=/lib/modules/`uname -r`/build

module:
	make -C $(LINUX_BLD) M=$(PWD)

modules_install clean:
	make -C $(LINUX_BLD) M=$(PWD) $@

## Linux kernel object linkage

obj-m := helloworld.o

load:
	sudo insmod helloworld.ko
	sudo dmesg | tail

unload:
	sudo rmmod helloworld.ko
	sudo dmesg | tail
