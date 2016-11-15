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
