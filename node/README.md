# node

Ansible Role para instalar o [Node](https://nodejs.org/en/), com binário baixado
diretamente do site oficial.

O Node é instalado em `/usr/local/node`. Adicione `/usr/local/node/bin` no
`$PATH`.

## Variáveis

- `node_version`: Versão do Node a ser instalada.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Debian Bullseye
