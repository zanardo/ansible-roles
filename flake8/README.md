# flake8

Ansible Role para instalar/atualizar o [flake8](https://github.com/pycqa/flake8), um
linter para Python.

O `flake8` é instalado em um virtualenv em `/opt/flake8`. São criados symlinks para os
scripts em `/usr/local/bin`. É usado o Python 3 do sistema.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

* `flake8_version`: Versão do flake8 a ser instalada. Caso a variável não seja definida, a
  última versão será instalada (porém não será atualizada automaticamente).

## Tags

- `flake8`: Executa o role completo.

## Compatibilidade

- Debian Buster
