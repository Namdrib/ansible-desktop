# LGSM Server Vars

Each different LGSM server should be run by a different user, with the same name as that game
e.g. Insurgency (insserver) should have a matching insserver user

The password of the user account will be stored in vault.yml
There will be a layer of indirection in vars.yml to point to that user's password

## File Structure
vars.yml:
```
insserver_password: {{ vault_insserver_password}}
```

vault.yml:
```
vault_insserver_password: password123
```

## How To Add New User
For each new LGSM server, ansible needs to create a corresponding user and set the password

1. Decrypt the vault file: `ansible-vault decrypt vault.yml`
2. In the vault file (vault.yml), insert a new line with the form `vault_<game>_password: <password>`, filling out the bits in <angled brackets> as appropriate
3. In the vars file (vars.yml), insert a new line with the form `<game>_password: vault_<game>_password`, filling out the bits in <angled brackets> as appropriate
4. Encrypt the fault file: `ansible-vault encrypt vault.yml`