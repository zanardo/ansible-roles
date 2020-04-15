# neovim

Ansible Role para instalar o [NeoVIM](https://neovim.io/), com binário baixado
diretamente do site oficial.

O NeoVIM é instalado em `/usr/local/neovim`. Adicione `/usr/local/neovim/bin` no
`$PATH`.

## Variáveis

- `neovim_version`: Versão do NeoVIM a ser instalada.

## Compatibilidade

- Debian Stretch
- Debian Buster
