# grub-config

Ansible Role para configurações básicas do Grub via `/etc/default/grub`.

## Variáveis

- `grub_config_timeout`: timeout do Grub a ser configurado em `GRUB_TIMEOUT`.
- `grub_config_cmdline`: linha de comando passada ao kernel pelo Grub a ser
  configurada em `GRUB_CMDLINE_LINUX`.
- `grub_config_cmdline_default`: linha de comando passada ao kernel pelo Grub a
  ser configurada em `GRUB_CMDLINE_LINUX_DEFAULT`.

## Ações

As seguintes mudanças são feitas no sistema:

- São feitas edições em `/etc/default/grub`.
- Caso mudanças sejam feitas, o comando `update-grub` é executado. Note que as
  mudanças vigorarão no próximo boot.

## Tags

- `grub:conf`: aplica as mudanças.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Debian Bullseye
