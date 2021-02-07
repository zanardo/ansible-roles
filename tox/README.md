# tox

Ansible Role para instalar/atualizar o [tox](https://github.com/tox-dev/tox).

O `tox` é instalado em um virtualenv em `/opt/tox`. São criados symlinks para os
scripts em `/usr/local/bin`. É usado o Python 3 do sistema.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

* `tox_version`: Versão do tox a ser instalada. Caso a variável não seja
  definida, a última versão será instalada (porém não será atualizada
  automaticamente).

## Tags

- `tox`: Executa o role completo.

## Compatibilidade

- Debian Buster
- Debian Bullseye
