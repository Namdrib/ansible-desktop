# OPNsense dnsmasq

This role configures dnsmasq as a DHCP server

1. Unbound acts as the primary resolver
2. dnsmasq acts as the DHCP server, and has static DHCP reservations (see: roles/opnsense_dnsmasq)
3. Unbound forwards the LAN zone to dnsmasq so local clients can be resolved by dnsmasq
