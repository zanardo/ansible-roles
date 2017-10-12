Ansible Role para configurar os repositórios de pacotes do Debian (em
`/etc/apt/sources.list`).

# Variáveis

- `sources_list_path`: caminho local para o template contendo a lista de
  repositórios. Caso esta variável não seja definida, os defaults contidos
  neste role serão usados.

# Tags

- `sources_list`: Executa todo o role.

# Compatibilidade

- Debian Wheezy
- Debian Jessie
- Debian Stretch
- Debian Buster (preliminar)
