# nspawn-containers

Ansible Role para criar e configurar containers via
[systemd-nspawn](https://www.freedesktop.org/software/systemd/man/systemd-nspawn.html).

Este role é bastante opinado, e suporta apenas containers rodando Debian.

O role cria as imagens em `/var/lib/machines` usando `debootstrap`, carrega o
container e finaliza o bootstrap via SSH.

## Variáveis

* `nspawn_container_name`: Nome do container. Exemplo: `postgresql`.

* `nspawn_container_host`: Host onde será criado o container, usando
  `delegate_to` do Ansible.

* `nspawn_container_nspawn_config`: Conteúdo da configuração do container a ser
  gravada em `/etc/systemd/nspawn/xxxx.nspawn`. Exemplo:

```ini
[Network]
Bridge=kvm0
```

* `nspawn_container_debian`: Suite do Debian a ser instalada no container.
  Default: `buster`.

* `nspawn_container_debian_mirror`: Mirror do repositório do Debian no formato
  passado para o `debootstrap`. Default: `http://deb.debian.org/debian`.

* `nspawn_container_autostart`: Configura a auto inicialização do container via
  `machinectl enable`. Default: `yes`.

* `nspawn_container_interface`: Nome da interface de rede do container. Default:
  `host0`.

* `nspawn_container_ip`: IP da interface de rede interna do container. Usado
  apenas no bootstrap, uma vez. É possível alterar depois pelo Ansible.

* `nspawn_container_gateway`: Gateway da interface de rede interna do container.
  Usado apenas no bootstrap, uma vez. É possível alterar depois pelo Ansible.

* `nspawn_container_resolv`: Conteúdo do arquivo `/etc/resolv.conf` do
  container. Usado apenas no bootstrap, uma vez. É possível alterar depois pelo
  Ansible.

* `nspawn_container_http_proxy`: Proxy para instalação do container via
  `debootstrap`. Default: ""

* `nspawn_container_template_cache_dir`: Diretório onde será feito um cache da
  imagem básica do container, gerada via `debootstrap`, para agilizar a
  instalação de outros containers com a mesma versão do Debian. Default:
  `/root/.cache/`.

* `nspawn_container_cache_max_age`: Tempo máximo de cache das imagens em
  `nspawn_container_template_cache_dir`. Default: "60d"

## Compatibilidade

- Debian Stretch (container)
- Debian Buster (host/container)
