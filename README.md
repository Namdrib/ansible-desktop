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
