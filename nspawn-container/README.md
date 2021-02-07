# nspawn-container

Ansible Role para criar e configurar containers via
[systemd-nspawn](https://www.freedesktop.org/software/systemd/man/systemd-nspawn.html).

O role cria as imagens em `/var/lib/machines` via `debootstrap`, aplica as configurações
básicas e carrega o container. As configurações completas deverão ser executadas por
outros roles.

## Variáveis

### Variáveis gerais

* `nspawn_name`: Nome do container. Exemplo: `postgresql`.

* `nspawn_host`: Host onde será criado o container, usando `delegate_to` do Ansible.

* `nspawn_distro`: Distribuição do Linux a ser usada no container. Opções suportadas:
  `debian`.

* `nspawn_config`: Conteúdo da configuração do container a ser gravada em
  `/etc/systemd/nspawn/xxxx.nspawn`. Exemplo:

```ini
[Network]
Bridge=kvm0
```

* `nspawn_autostart`: Configura a auto inicialização do container via `machinectl
  enable`. Default: `yes`.

* `nspawn_bootstrap_ssh_allowed_key`: Chave(s) pública(s) de SSH a serem liberadas em
  `/root/.ssh/authorized_keys` no container.

### Variáveis para containers com `nspawn_distro` == `debian`

* `nspawn_debian_suite`: Suite do Debian a ser instalada no container. Exemplo:
  `buster`.

* `nspawn_debian_mirror`: Mirror do repositório do Debian no formato passado para o
  `debootstrap`. Default: `http://deb.debian.org/debian`.

* `nspawn_etc_network_interfaces`: Conteúdo a ser gravado em `/etc/network/interfaces`,
  com as configurações de rede do container. Usado apenas no bootstrap. É possível
  alterar depois usando outros roles.

* `nspawn_etc_resolv_conf`: Conteúdo a ser gravado em `/etc/resolv.conf`, com as
  configurações de DNS do container. Usado apenas no bootstrap. É possível alterar
  depois usando outros roles.

* `nspawn_ip`: IP da interface de rede interna do container. Usado apenas no bootstrap,
  uma vez. É possível alterar depois usando outros roles.

## Compatibilidade

- Arch (host)
- Debian Stretch (container)
- Debian Buster (host/container)
- Debian Bullseye (host/container)
