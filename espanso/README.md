# espanso

Ansible Role para instalar o [espanso](https://github.com/federico-terzi/espanso).

O espanso é compilado do código-fonte. É necessário definir a variável
`rust_toolchains`.

Nenhum processo é carregado na inicialização. Para carregar o processo, digite com seu
usuário:

```bash
espanso start
```

Após uma atualização de versão:

```bash
systemctl --user restart espanso
```

## Variáveis

- `espanso_version`: Versão do espanso a ser instalada.

## Tags

- `espanso`: Executa todo o role.

## Compatibilidade

- Debian Buster
