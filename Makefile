PHONY := u-boot u-boot-distclean

PWD := $(shell pwd)
UBOOT_SRC_DIR = $(PWD)/u-boot/u-boot-2018.01
CROSS_COMPILE = arm-linux-gnueabihf-

u-boot:
	make -C $(UBOOT_SRC_DIR) ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) zynq_zed_defconfig
	make -C $(UBOOT_SRC_DIR) ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE)

u-boot-distclean:
	make -C $(UBOOT_SRC_DIR) ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) distclean

help:
	@echo  ''
	@echo  '  --- XILINX ---'
	@echo  '  u-boot            - Build for u-boot'
	@echo  '  u-boot-distclean  - Distclean for u-boot'
	@echo  ''
	
.PHONY: $(PHONY)