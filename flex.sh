#!/bin/bash

DNS1="178.22.122.100"
DNS2="185.51.200.2"

ACTIVE_CONN=$(nmcli -t -f NAME,DEVICE connection show --active | while IFS=: read -r name dev; do
    if nmcli device status | grep -q "^$dev.*connected"; then
        echo "$name"
        break
    fi
done)

if [ -z "$ACTIVE_CONN" ]; then
    echo "No active network connection found."
    exit 1
fi

while true; do
    echo "---------------------------"
    echo "Active connection: $ACTIVE_CONN"
    echo "1) Set default custom DNS (Shecan-DNS)"
    echo "2) Enter custom DNS manually"
    echo "3) Restore automatic DNS"
    echo "4) Exit"
    echo "---------------------------"
    read -p "Select an option: " choice

    case $choice in
        1)
            sudo nmcli connection modify "$ACTIVE_CONN" ipv4.ignore-auto-dns yes
            sudo nmcli connection modify "$ACTIVE_CONN" ipv4.dns "$DNS1 $DNS2"
            sudo nmcli connection up "$ACTIVE_CONN"
            echo "Default DNS applied."
            ;;
        2)
            read -p "Enter DNS servers separated by space: " USER_DNS
            if [ -z "$USER_DNS" ]; then
                echo "No DNS entered. Skipping."
            else
                sudo nmcli connection modify "$ACTIVE_CONN" ipv4.ignore-auto-dns yes
                sudo nmcli connection modify "$ACTIVE_CONN" ipv4.dns "$USER_DNS"
                sudo nmcli connection up "$ACTIVE_CONN"
                echo "Custom DNS applied: $USER_DNS"
            fi
            ;;
        3)
            sudo nmcli connection modify "$ACTIVE_CONN" ipv4.ignore-auto-dns no
            sudo nmcli connection modify "$ACTIVE_CONN" ipv4.dns ""
            sudo nmcli connection up "$ACTIVE_CONN"
            echo "Automatic DNS restored."
            ;;
        4)
            exit 0
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
done
