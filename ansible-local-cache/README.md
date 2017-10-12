Ansible Role para criar o diretório `~/.cache/ansible` na máquina
local, no home do usuário executando o Ansible.

Este role deve ser adicionado como dependência em roles que fazem o download
de arquivos e mantém em cache local.

# Ações

As seguintes mudanças são feitas no sistema:

- Cria o diretório `~/.cache/ansible` na máquina local (que está
  executando o Ansible).

# Compatibilidade

- Debian Jessie
- Debian Stretch