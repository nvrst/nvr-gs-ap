# Wifi AP on OpenIPC NVR groundstation

## A quick setup

1. Flash NVR with **openipc.NVR.gs.au.eu.hostapd.tgz**
2. Copy **hostapd.conf** and **udhcpd.conf** to /etc directory on NVR
3. Copy **S99nvr-gs-ap** to /etc/init.d directory on NVR
4. Reboot the NVR
5. Connect to wifi network 'nvr-gs' with password '12345678'
6. Enable udp video stream in QGroundControl

## Current issues
- USB network interfaces names are assigned randomly to cards
- Both connections are on 5G
