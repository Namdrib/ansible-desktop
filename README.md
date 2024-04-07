# ansible-desktop
Ansible setup for my desktop(s) so I can get up to speed quicker

Assumes the desktops will be running Linux. Intended for Manjaro and Fedora/Nobara installations

To run:
```
ansible-playbook -K main.yml
```

This will:
1. install packages
1. install dotfiles
1. put some programs into autostart
1. create mount points and fstab entries for samba shares

## Recipes
TODO: Make this into a Makefile

### Setup autoretic backups
This may need to be run with `-b` the first time so it can properly install restic and autorestic
Then without `-b` for subsequent runs
It may also require the user to manually run `autorestic check` on the target
```
ansible-playbook -i inventory.yml setup_backups.yml --limit nas01 -D -K
```

### Setup graphics drivers
```
ansible-playbook -i inventory.yml setup_graphics_drivers.yml --limit apps01 -b -K -D
```

### Setup Pihole DNS/DHCP
```
ansible-playbook -i inventory.yml setup_pihole_dns_dhcp_server.yml --limit north-east -K -b -D
```

### Setup docker host
```
ansible-playbook -i inventory.yml setup_docker_host.yml --limit apps01 -u namdrib -K -D
```
