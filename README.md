# Wifi AP on OpenIPC NVR groundstation

1. Flash NVR with openipc.NVR.gs.au.eu.hostapd.tgz
2. Copy hostapd.conf and udhcpd.conf to /etc directory on NVR
3. Copy S99nvr-gs-ap to /etc/init.d directory on NVR
4. Reboot the NVR
5. Connect to wifi network 'nvr-gs' with password '12345678'
6. Enable udp video stream in QGroundControl
