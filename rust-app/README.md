# rust-app

Ansible Role para instalar um aplicativo compilado em Rust.

Este role é normalmente usado como base de outros roles.

## Variáveis

- `rust_app_name`: Nome do aplicativo a ser instalado.
- `rust_app_version`: Versão do aplicativo a ser instalado.
- `rust_app_url`: Url para download do código-fonte do aplicativo a ser
  instalado. Normalmente baixado da página de _releases_ do Github.
- `rust_app_apt_packages`: Lista contendo os pacotes a serem instalados via
  `apt`, necessários para a compilação do aplicativo. Default: `[]`.
- `rust_app_cmd_get_version`: Comando em shell usado para retornar a versão
  instalada do aplicativo.
- `rust_app_executables`: Lista contendo os nomes dos executáveis a serem
  copiados para `/usr/local/bin`.

## Tags

## Compatibilidade

- Debian Buster
- Debian Bullseye
