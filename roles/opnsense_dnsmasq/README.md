# OPNsense dnsmasq

This role configures dnsmasq with the following high-level goals:
- DHCP server
- Static DHCP leases
- DNS resolution of local hosts
    - Primary DNS resolution is handled by Unbound
