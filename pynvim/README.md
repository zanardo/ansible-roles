# pynvim

Ansible Role para instalar/atualizar o
[pynvim](https://github.com/neovim/neovim), biblioteca para rodar plugins via
Python no neovim.

O `pynvim` é instalado em um virtualenv em `/opt/pynvim`.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

* `pynvim_version`: Versão do pynvim a ser instalada. Caso a variável não seja
  definida, a última versão será instalada (porém não será atualizada
  automaticamente).

## Tags

- `pynvim`: Executa o role completo.

## Compatibilidade

- Debian Buster
- Debian Bullseye
