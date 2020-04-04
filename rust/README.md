# rust

Ansible Role para instalar o [Rust](https://www.rust-lang.org/).

O Rust é instalado em `~/.rustup` e `~/.cargo` do usuário definido em
`rust_user` através do `rustup`.

## Variáveis

- `rust_user`: Usuário onde o Rust será instalado.

- `rust_install_nightly`: Define se o toolchain _nightly_ será instalado.
  Default: `no`.

- `rust_components`: Define os componentes a serem instalados. Ex: `["rustfmt",
  "rust-src"]`. Default: `[]`.

## Tags

- `rust`: Executa todo o role.

## Compatibilidade

- Debian Stretch
- Debian Buster
