# go

Ansible Role para instalar o [Go](https://golang.org/), com binário baixado diretamente do
site oficial.

O Go é instalado em `/usr/local/go`. Adicione `/usr/local/go/bin` no `$PATH`.

## Variáveis

- `go_version`: Versão do Go a ser instalada.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Debian Bullseye
