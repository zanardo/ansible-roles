# isort

Ansible Role para instalar/atualizar o [isort](https://github.com/PyCQA/isort), um
formatador de imports para Python.

O `isort` é instalado em um virtualenv em `/opt/isort`. São criados symlinks para os
scripts em `/usr/local/bin`. É usado o Python 3 do sistema.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

* `isort_version`: Versão do isort a ser instalada.

## Tags

- `isort`: Executa o role completo.

## Compatibilidade

- Debian Buster
- Debian Bullseye
