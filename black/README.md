# black

Ansible Role para instalar/atualizar o [black](https://github.com/psf/black), um
formatador para código-fonte de Python.

O `black` é instalado em um virtualenv em `/opt/black`. São criados symlinks para os
scripts em `/usr/local/bin`. É usado o Python 3 do sistema.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

* `black_version`: Versão do black a ser instalada. Caso a variável não seja definida, a
  última versão será instalada (porém não será atualizada automaticamente).

## Tags

- `black`: Executa o role completo.

## Compatibilidade

- Debian Buster
- Debian Bullseye
