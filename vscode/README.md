# vscode

Ansible Role para instalar o **Visual Studio Code**, usando o repositório oficial do
projeto para o Debian.

É instalada a última versão estável. O repositório do Visual Studio Code é adicionado,
para que o aplicativo possa ser atualizado via _apt_.

## Variáveis

- `vscode_apt_repo`: Repositório do _apt_, para uso de mirrors locais. Default:
  `https://packages.microsoft.com/repos/code`.

## Tags

- `vscode`: aplica todo o role.

## Compatibilidade

- Debian Buster
- Debian Bullseye
