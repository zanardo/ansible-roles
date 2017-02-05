Este repositório contém roles do
[Ansible](https://docs.ansible.com/ansible/index.html).

Os roles são desenvolvidos e testados apenas no **Debian** (stable).

Os termos de uso podem ser encontrados no arquivo `COPYING` na raíz deste
repositório.

# Como usar

- Configurar um submódulo do Git para os roles:

```bash
mkdir -p roles/zanardo
git submodule add https://github.com/zanardo/ansible-roles \
  roles/zanardo
```

- Criar o diretório para o cache local dos downloads:

```bash
mkdir -p ~/.cache/ansible
```
