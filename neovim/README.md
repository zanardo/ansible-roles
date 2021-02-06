# neovim

Ansible Role para instalar o [NeoVIM](https://neovim.io/), com binário baixado
diretamente do site oficial.

O NeoVIM é instalado em `/usr/local/neovim`. São criados links em
`/usr/local/bin/vi`, `/usr/local/bin/vim` e `/usr/local/bin/nvim`.

## Variáveis

- `neovim_version`: Versão do NeoVIM a ser instalada.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Debian Bullseye
