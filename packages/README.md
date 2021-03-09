# packages

Ansible Role para instalar pacotes.

## Variáveis

- `packages_install`: lista com nomes de pacotes a serem instalados.

```yaml
packages_install:
  - rsync
  - tmux
```

## Tags

- `packages`: Executa todo o role.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Debian Bullseye
- Ubuntu Bionic
- Arch
