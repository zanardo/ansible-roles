# mypy

Ansible Role para instalar/atualizar o [mypy](http://mypy-lang.org/), um verificador
estático para o Python.

O `mypy` é instalado em um virtualenv em `/opt/mypy`. São criados symlinks para os
scripts em `/usr/local/bin`. É usado o Python 3 do sistema.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

* `mypy_version`: Versão do mypy a ser instalada. Caso a variável não seja definida, a
  última versão será instalada (porém não será atualizada automaticamente).

## Tags

- `mypy`: Executa o role completo.

## Compatibilidade

- Debian Buster
- Debian Bullseye
