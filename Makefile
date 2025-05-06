CONFIG_MODULE_SIG=n
obj-m += ublk_drv-test.o

all :
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) modules
	insmod ublk_drv-test.ko
clean :
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) clean
	rmmod ublk_drv-test

re :
	make clean
	make 
