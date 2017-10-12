Ansible Role para instalar e configurar o servidor
[PostgreSQL](http://www.postgresql.org) no Debian.

# Variáveis

- `postgresql_conf`: caminho local onde os arquivos de configuração do
  PostgreSQL estão salvos.

- `postgresql_conf_files`: lista com nomes dos arquivos de configuração
  do PostgreSQL que serão copiados.

# Tags

- `postgresql`: executa todo o role.

- `postgresql:conf`: atualiza a configuração.

# Compatibilidade

- Debian Jessie
- Debian Stretch
