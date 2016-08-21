Este repositório contém roles do
[Ansible](https://docs.ansible.com/ansible/index.html).

Os termos de uso podem ser encontrados no arquivo `COPYING` na raíz deste
repositório.

Para usar os roles:

- Clonar o repositório:

    git clone https://github.com/zanardo/ansible-roles ~/ansible-roles

- Configurar o caminho dos roles no arquivo `ansible.cfg` dos playbooks:

    roles_path = ./roles:~/ansible-roles

*Atenção*: Este repositório é uma experiência de unificar os roles do Ansible
em apenas um repositório, ao invés de manter cada role em um repositório
separado e usar git submodules.
