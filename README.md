Este repositório contém roles do
[Ansible](https://docs.ansible.com/ansible/index.html).

Os roles são desenvolvidos e testados apenas no **Debian** (stable).

Os termos de uso podem ser encontrados no arquivo `COPYING` na raíz deste
repositório.

Para usar os roles:

- Clonar o repositório:

```
git clone https://github.com/zanardo/ansible-roles ~/ansible-roles
```

- Configurar o caminho dos roles no arquivo `ansible.cfg` dos playbooks:

```
roles_path = ./roles:~/ansible-roles
```

**Atenção**: Este repositório é uma experiência de unificar os roles do Ansible
em apenas um repositório, ao invés de manter cada role em um repositório
separado e usar git submodules.

# Padronizações

Alguns políticas de padronização que os roles observam:

- Usar os pacotes oficiais da distribuição do Debian sempre que possível.

- Caso seja necessário usar uma versão diferente dos softwares (ex: versão mais
  nova do que existe no repositório oficial), compilar do código-fonte e
  instalar de forma a não afetar os pacotes instalados. Evitar instalar pacotes
  de repositórios externos.

- Softwares compilados devem ser instalados em `/usr/local`.

- Usar o Stow para gerenciar os arquivos instalados, para facilitar a
  atualização das versões e remover os softwares de `/usr/local` caso
  necessário.

- Compilar e instalar os softwares usando um usuário sem privilégios (ex:
  `nobody`).

- Tentar evitar dependências entre os roles.
