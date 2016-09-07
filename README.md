Este repositório contém roles do
[Ansible](https://docs.ansible.com/ansible/index.html).

Os roles são desenvolvidos e testados apenas no **Debian** (stable).

Os termos de uso podem ser encontrados no arquivo `COPYING` na raíz deste
repositório.

Para usar os roles:

- Clonar o repositório:

```
git clone https://github.com/zanardo/ansible-roles ~/ansible-roles-zanardo
```

- Configurar o caminho dos roles no arquivo `ansible.cfg` dos playbooks:

```
roles_path = ./roles:~/ansible-roles-zanardo
