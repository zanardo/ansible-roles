# poetry

Ansible Role para instalar/atualizar o [poetry](https://python-poetry.org/), um
gerenciador de dependências para Python.

O `poetry` é instalado em um virtualenv em `/opt/poetry`. São criados symlinks para os
scripts em `/usr/local/bin`. É usado o Python 3 do sistema.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

* `poetry_version`: Versão do poetry a ser instalada.

## Tags

- `poetry`: Executa o role completo.

## Compatibilidade

- Debian Buster
- Debian Bullseye
