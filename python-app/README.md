# python-app

Ansible Role para instalar um aplicativo em Python.

Este role é normalmente usado como base de outros roles.

## Variáveis

### Obrigatórias

- `python_app_name`: Nome do aplicativo a ser instalado. É o mesmo nome do
  pacote a ser instalado via `pip`.
- `python_app_version`: Versão do aplicativo a ser instalado.
- `python_app_scripts`: Lista contendo os nomes dos scripts a serem criados
  _symlinks_ para `/usr/local/bin`.

### Opcionais

- `python_app_apt_packages`: Lista contendo os pacotes a serem instalados via
  `apt`, necessários para a instalação/execução do aplicativo. Default: `[]`.

## Tags

## Compatibilidade

- Debian Buster
- Debian Bullseye
