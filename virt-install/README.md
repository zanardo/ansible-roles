Ansible Role para provisionar uma máquina virtual usando o `virt-install`.
Deve-se usar `preseed` (Debian e derivados) ou tecnologias semelhantes para uma
instalação automatizada do sistema operacional.

# Variáveis

- `virt_install_vmhost`: nome do host de virtualização (deverá estar no
   inventário).
- `virt_install_http_proxy`: proxy http passado para o `virt-install`, para
  agilizar downloads consecutivos para netinstall (kernel, initrd, etc).
- `virt_install_name`: nome da máquina virtual.
- `virt_install_ip`: IP da máquina virtual (usado para reciclar a entrada
   em `known_hosts` do SSH).
- `virt_install_args`: lista com argumentos passados diretamente ao
  `virt-install`. Note que somente os argumentos `--connect` (o qual usa
  `qemu:///system`) e `--name` (`virt_install_name`) são passados para o
  `virt-install`.
- `virt_waitfor_port`: porta TCP para aguardar a máquina responder em
  `virt_install_ip`. Pode ser usado quando é passado o argumento
  `--noautoconsole` para o `virt-install`.

# Ações

As seguintes mudanças são feitas no sistema:

- O `virt-install` é instalado no servidor de virtualização.

- O `virt-install` é iniciado no servidor de virtualização, e a instalação da
  máquina virtual é iniciada. Você pode se conectar via `virt-manager` ou
  `virt-viewer` para acompanhar o console de instalação.

- A entrada com o IP `virt_install_ip` é removida de `~/.ssh/know_hosts` da
  máquina executando o Ansible.

# Exemplo

```yaml
- hosts: vm
  father_facts: no    # importante!

  roles:

  - role: zanardo.virt-install
    virt_install_name: squid
    virt_install_ip: 192.168.1.100
    virt_install_args:
      - "--graphics vnc"
      - "--memory 512"
      - "--clock offset=utc"
      - "--network bridge=br0,model=virtio"
      - "--os-variant debianwheezy"
      - "--disk /srv/kvm/squid.qcow2,size=50,bus=virtio,format=qcow2,cache=writeback"
      - "--location http://ftp.br.debian.org/debian/dists/jessie/main/installer-amd64/"
      - "--extra-args \"
           quiet
           priority=critical
           auto
           hostname=squid
           url=tftp://preseed.1/jessie.cfg
           debian-installer/locale=en_US.UTF-8
           debian-installer/language=en
           debian-installer/country=BR
           keyboard-configuration/xkb-keymap=br
           interface=eth0
           netcfg/disable_autoconfig=true
           netcfg/get_ipaddress={{ virt_install_ip }}
           netcfg/get_netmask=255.255.255.0
           netcfg/get_gateway=192.168.1.1
           netcfg/get_nameservers=192.168.1.2
           netcfg/confirm_static=true
        \""
```
