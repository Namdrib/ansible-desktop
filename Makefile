# Makefile for ansible-desktop


# Encrypt all vault files in all subdirectories of group_vars
# The password will be the same for all of them
encrypt:
	ansible-vault encrypt group_vars/*/vault.yml

# Decrypt all vault files in all subdirectories of group_vars
# Assumes they all have the same password
decrypt:
	ansible-vault decrypt group_vars/*/vault.yml

# Install ansible requirements
requirements:
	ansible-galaxy install -r requirements.yml

tasmota:
	ansible-playbook -i inventory.yml setup_tasmota_devices.yml -D

dhcp:
	ansible-playbook -i inventory.yml setup_pihole_dns_dhcp_server.yml --limit north_east -K -b -D -C

apps01:
	ansible-playbook setup_host_apps01.yml -K -D

apps02:
	ansible-playbook setup_host_apps02.yml -K -D

triple-coaster:
	ansible-playbook setup_triple_coaster.yml -K -D
