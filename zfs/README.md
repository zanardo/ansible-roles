# zfs

Ansible Role para instalar o ZFS via pacotes do repositório de *backports* do Debian.

## Variáveis

- `zfs_mod_conf`: Dicionário com configurações do módulo do ZFS que serão gravadas em
  `/etc/modprobe.d/zfs.conf`. Default: `{}`. Ex: a configuração `{ "zfs_arc_max":
  "32212254720" }` será gravada como:

```
options zfs zfs_arc_max=32212254720
```

## Tags

- `zfs`: Executa todo o role.

## Compatibilidade

- Debian Buster
- Debian Bullseye
