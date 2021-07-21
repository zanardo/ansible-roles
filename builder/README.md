# builder

Ansible Role para criar um usuário de sistema com nome `_builder`, utilizado para
compilações em outros roles.

Isto evita compilações com o usuário `root`, por motivos de segurança.

## Tags

- `builder`: aplica todo o role.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Debian Bullseye
