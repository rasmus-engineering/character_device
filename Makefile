CONFIG_MODULE_SIG=n
obj-m = hello.o
KVERSION = $(shell uname -r)

all:
		make -C /lib/modules/$(KVERSION)/build M=$(pwd) modules

clean: 	make -C /lib/modules/$(KVERSION)/build M=$(pwd) clean
