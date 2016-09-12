Este repositório contém roles do
[Ansible](https://docs.ansible.com/ansible/index.html).

Os roles são desenvolvidos e testados apenas no **Debian** (stable).

Os termos de uso podem ser encontrados no arquivo `COPYING` na raíz deste
repositório.

# Como usar

- Clonar o repositório:

```bash
git clone https://github.com/zanardo/ansible-roles ~/ansible-roles-zanardo
```

- Configurar o caminho dos roles no arquivo `ansible.cfg` dos playbooks:

```ini
roles_path = ./roles:~/ansible-roles-zanardo
```

- Criar o diretório para o cache local dos downloads:

```bash
mkdir -p ~/.cache/ansible
```
