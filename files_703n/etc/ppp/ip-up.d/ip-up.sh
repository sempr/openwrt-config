ip route add default via $(ip route show dev pptp-vpn | tail -n 1 | cut -d ' ' -f 1) table 1
