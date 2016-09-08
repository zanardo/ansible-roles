Ansible Role para instalar e configurar o servidor
[PostgreSQL](http://www.postgresql.org) no Debian. O PostgreSQL é instalado do
repositório do projeto, permitindo a instalação de versões diferentes da que
vêm no Debian.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - role: zanardo.postgresql
    postgresql_version: 9.4
    postgresql_conf: files/postgresql
    postgresql_conf_files:
      - postgresql.conf
      - pg_hba.conf
```

# Variáveis

- `postgresql_version`: release (ex: 9.1, 9.4). Não adicionar o minor (ex:
  9.1.22).

- `postgresql_conf`: caminho local onde os arquivos de configuração do
  PostgreSQL estão salvos.

- `postgresql_conf_files`: lista com nomes dos arquivos de configuração
  do PostgreSQL que serão copiados.

# Ações

As seguintes mudanças são feitas no sistema:

- Adiciona o repositório do projeto PostgreSQL para Debian no apt.

- Instala a versão desejada.

- Copia os arquivos de configuração listados na variável
  `postgresql_conf_files`, caso definidas.
