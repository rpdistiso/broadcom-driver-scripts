#!/bin/bash
apt-get update && apt-get upgrade
apt-get install wget firmware-b44-installer wpasupplicant wireless-tools
apt remove broadcom-sta-dkms
modprobe b44
rm /etc/modprobe.d/broadcom-sta-dkms.conf
echo "Installed Broadcom b44 driver"