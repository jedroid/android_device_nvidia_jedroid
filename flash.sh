#!/bin/bash
cd bootloader
sudo ./nvflash --bct bct.cfg --setbct --configfile flash.cfg --create --bl fastboot.bin --odmdata 0x6009C000 --go
cd -

