# httpie

Ansible Role para instalar/atualizar o
[httpie](https://github.com/httpie/httpie), um cliente http amigável para linha
de comando.

O `httpie` é instalado em um virtualenv em `/opt/httpie`. São criados symlinks
para os scripts em `/usr/local/bin`. É usado o Python 3 do sistema.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

* `httpie_version`: Versão do httpie a ser instalada.

## Tags

- `httpie`: Executa o role completo.

## Compatibilidade

- Debian Buster
- Debian Bullseye
