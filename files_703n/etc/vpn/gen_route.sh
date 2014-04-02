#!/bin/sh

if [ ! -f /etc/vpn/vpn.hosts.txt ]; then
touch /etc/vpn/vpn.hosts.txt
fi

if [ ! -f /etc/vpn/vpn.nets.txt ]; then
touch /etc/vpn/vpn.nets.txt
fi

for x in `cat /etc/vpn/vpn.hosts.txt`
do
    NEW_CMD="route add -host $x dev $1";
    eval $NEW_CMD;
done

for x in `cat /etc/vpn/vpn.nets.txt`
do
    NEW_CMD="route add -net $x dev $1";
    eval $NEW_CMD;
done

