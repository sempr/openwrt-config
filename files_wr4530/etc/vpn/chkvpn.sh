#!/bin/sh

VPNTEST=$(ifconfig | grep "vpn")
if [ -z "$VPNTEST" ]; then
        if [ -e /tmp/TRY ]; then
                read TRY < /tmp/TRY
        else
                TRY=0
        fi
        if [ $TRY -le 100 ]; then
                ubus call network.interface.vpn down
                ubus call network.interface.vpn up
                let "TRY += 1"
                logger VPN lost, trying to reconnect for $TRY times
                echo $TRY > /tmp/TRY
        else
                killall pppd
                rm /tmp/TRY
                logger vpn lost after $TRY tries, pppd is restarted
        fi
fi
