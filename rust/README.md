# rust

Ansible Role para instalar o [Rust](https://www.rust-lang.org/).

O Rust é instalado em `/opt/rust`, com os toolchains definidos na lista
`rust_toolchains`. O primeiro toolchain da list será definido como default.

## Variáveis

- `rust_toolchains`: Define uma lista de toolchains a serem instalados. O primeiro da
  lista será o default. Caso um toolchain esteja instalado e não exista na lista, ele
  será desinstalado. Ex: `["stable", "nightly"]`.

- `rust_components`: Define os componentes a serem instalados. Ex: `["rustfmt",
  "rust-src"]`. Default: `[]`.

## Tags

- `rust`: Executa todo o role.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Debian Bullseye
