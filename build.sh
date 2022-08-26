#!/bin/sh

cd buildroot
make BR2_EXTERNAL=../external RASPI_defconfig
make