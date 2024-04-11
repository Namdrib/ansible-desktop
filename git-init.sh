#!/bin/bash
# sets up a pre-commit hook to ensure that vault.yaml is encrypted
#
# credit goes to nick busey from homelabos for this neat little trick
# https://gitlab.com/NickBusey/HomelabOS/-/issues/355

vault_file="./group_vars/"
hook_file=".git/hooks/pre-commit"

if [ -d .git/ ]; then

/usr/bin/echo "Removing $hook_file"
/usr/bin/rm "$hook_file"

/usr/bin/echo "Creating $hook_file"
/usr/bin/cat <<EOT > "$hook_file"
if ( /usr/bin/grep -qr "\$ANSIBLE_VAULT;" "$vault_file" ); then
	/usr/bin/echo "Vault Encrypted. Safe to commit."
else
	/usr/bin/echo "Vault not encrypted! Run 'make encrypt' and try again."
	exit 1
fi
EOT
fi

/usr/bin/echo "Changing perms on $hook_file"
/usr/bin/chmod +x "$hook_file"
