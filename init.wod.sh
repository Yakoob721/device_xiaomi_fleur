#!/vendor/bin/sh

# Give the ePDG stack 5 seconds to negotiate IPsec with the ePDG node
sleep 5

# Optimize MTU to bypass ISP fragmentation on Wi-Fi and Virtual Interfaces
for iface in wlan0 epdg0 xfrm0 tun0 ccmni0 ccmni1; do
    if ip link show "$iface" > /dev/null 2>&1; then
        ip link set dev "$iface" mtu 1360
    fi
done
