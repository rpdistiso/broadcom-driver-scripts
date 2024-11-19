#!/bin/bash
apt-get update && apt-get upgrade
apt-get install wget firmware-b43-installer firmware-b43legacy-installer wpasupplicant
apt remove broadcom-sta-dkms
modprobe b43
rm /etc/modprobe.d/broadcom-sta-dkms.conf
echo "Installed Broadcom b43 driver"
