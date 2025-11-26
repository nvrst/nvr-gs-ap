#!/bin/bash
#
# Start forwarding on GS for firmware update on VTX-s
#
# On VTX:
# echo "nameserver 1.1.1.1" > /etc/resolv.conf
# route add -net 0.0.0.0 gw 10.5.0.1

echo 1 > /proc/sys/net/ipv4/ip_forward
/sbin/iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
/sbin/iptables -A FORWARD -i gs-wfb -o wlan0 -j ACCEPT
/sbin/iptables -A FORWARD -i wlan0 -o gs-wfb -m state --state RELATED,ESTABLISHED -j ACCEPT
