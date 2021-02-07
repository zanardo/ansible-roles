# ipython

Ansible Role para instalar/atualizar o
[ipython](https://github.com/ipython/ipython), um REPL para Python.

O `ipython` é instalado em um virtualenv em `/opt/ipython`. São criados symlinks
para os
scripts em `/usr/local/bin`. É usado o Python 3 do sistema.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

* `ipython_version`: Versão do ipython a ser instalada. Caso a variável não seja
  definida, a última versão será instalada (porém não será atualizada
  automaticamente).

## Tags

- `ipython`: Executa o role completo.

## Compatibilidade

- Debian Buster
- Debian Bullseye
