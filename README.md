# ansible-desktop
Ansible setup for my various compute devies so I can get up to speed quicker

This includes:
- desktop (various installations)
- servers
- helper tasks like fetching host variables

Assumes the desktops will be running Linux.
Some roles have branching execution depending on the target OS family.
For example, some packages may be named differently, or not exist, across different distros
The main targets are:
- Manjaro Linux
- Fedora/Nobara
- Ubuntu

To run:
```
# Dry run
ansible-playbook -D -C -K <playbook.yml>

# Actual run
ansible-playbook -D -K <playbook.yml>
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
ansible-playbook setup_backups.yml --limit nas01 -D -K
```

### Setup graphics drivers
```
ansible-playbook setup_graphics_drivers.yml --limit apps01 -b -K -D
```

### Setup Pihole DNS/DHCP
```
ansible-playbook setup_pihole_dns_dhcp_server.yml --limit north-east -K -b -D
```

### Setup docker host
```
ansible-playbook setup_docker_host.yml --limit apps01 -u namdrib -K -D
```

### Setup main host
```
ansible-playbook setup_triple_coster.yml --limit triple-coaster -D -K -C
```

