Ansible Role para provisionar uma máquina virtual usando o `virt-install`.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.virt-install }
```

# Variáveis

- `virt_install_name`: nome da máquina virtual.
- `virt_install_ip`: IP da máquina virtual (usado para reciclar a entrada
   em `known_hosts` do SSH).
- `virt_install_args`: lista com argumentos passados diretamente ao
  `virt-install`. Note que somente os argumentos `connect` (o qual usa
  `qemu+ssh://{{ ansible_host }}/system`) e `name` (`virt_install_name`) são
  passados para o `virt-install`.
- `virt_waitfor_port`: porta TCP para aguardar a máquina responder em
  `virt_install_ip`. Pode ser usado quando é passado o argumento
  `--noautoconsole` para o `virt-install`.

# Ações

As seguintes mudanças são feitas no sistema:

- O `virt-install` é chamado da mesma máquina onde o Ansible está sendo
  executado. É iniciada a instalação da máquina virtual no host de destino, e
  um console gráfico é exibido na máquina rodando o Ansible.

- A entrada com o IP `virt_install_ip` é removida de `~/.ssh/know_hosts` da
  máquina executando o Ansible.

# Observações

- A máquina executando o Ansible deve ter o `virt-install` e o `virt-viewer`
  instalados.

# Exemplo

```yaml
- role: zanardo.virt-install
  virt_install_name: prod-squid
  virt_install_ip: 10.27.38.8
  virt_install_args:
	- "--graphics vnc"
	- "--memory 512"
	- "--clock offset=utc"
	- "--network bridge=kvm0,model=virtio"
	- "--os-variant debianwheezy"
	- "--disk /srv/kvm2/kvm/prod-squid.qcow2,size=50,bus=virtio,format=qcow2,cache=writeback"
	- "--location http://ftp.br.debian.org/debian/dists/jessie/main/installer-amd64/"
	- "--extra-args \"
		quiet
		priority=critical
		auto
		hostname=prod-squid
		url=tftp://preseed.1/jessie.cfg
		debian-installer/locale=en_US.UTF-8
		debian-installer/language=en
		debian-installer/country=BR
		keyboard-configuration/xkb-keymap=br
		interface=eth0
		netcfg/disable_autoconfig=true
		netcfg/get_ipaddress={{ virt_install_ip }}
		netcfg/get_netmask=255.255.255.0
		netcfg/get_gateway=10.27.38.1
		netcfg/get_nameservers=10.27.38.2
		netcfg/confirm_static=true
	  \""
```
