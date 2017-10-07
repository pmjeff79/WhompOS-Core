#!/bin/bash

## Installs WhompOS to /dev/sda3

export WOS=/mnt/wos &&
mkfs.ext4 /dev/sda3 &&
mkswap /dev/sda4

mount -v -t ext2 /dev/sda3 $WOS

mkdir $WOS/.install
cd $WOS/.install &&
tar xvf ${SRCDIR}/WhompOS-1.0.tar.xz 
