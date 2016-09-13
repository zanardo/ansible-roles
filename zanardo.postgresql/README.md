Ansible Role para instalar e configurar o servidor
[PostgreSQL](http://www.postgresql.org) no Debian.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - role: zanardo.postgresql
    postgresql_conf: files/postgresql
    postgresql_conf_files:
      - postgresql.conf
      - pg_hba.conf
```

# Variáveis

- `postgresql_conf`: caminho local onde os arquivos de configuração do
  PostgreSQL estão salvos.

- `postgresql_conf_files`: lista com nomes dos arquivos de configuração
  do PostgreSQL que serão copiados.

# Tags

- `postgresql`: executa todo o role.

- `postgresql:conf`: atualiza a configuração.
