Ansible Role para instalar e configurar o
**[pgbouncer](https://pgbouncer.github.io/)** no Debian, compilado do
código-fonte.

# Variáveis

- `pgbouncer_version`: Versão do pgbouncer a ser instalada em `/usr/local`.

- `pgbouncer_conf`: Path para o arquivo local de configurações. Ex:
  `files/pgbouncer/pgbouncer.ini`.

- `pgbouncer_userlist_conf`: Path para o arquivo local de configurações de
  autorização (auth_file). Ex: `files/pgbouncer/userlist.txt`.

# Ações

- São instalados pacotes necessários para compilar e executar o pgbouncer.

- O pgbouncer é instalado em `/opt/pgbouncer`.

- É criado o usuário `opt-pgbouncer`.

- O arquivo de configuração definido em `pgbouncer_conf` é copiado para
  `/etc/opt/pgbouncer/pgbouncer.ini` com permissão de leitura para o grupo
  `opt-pgbouncer`.

- O arquivo de configuração definido em `pgbouncer_userlist_conf` é copiado
  para `/etc/opt/pgbouncer/userlist.txt` com permissão de leitura para o grupo
  `opt-pgbouncer`.

- É configurado o serviço `pgbouncer` no Supervisor, e o processo é carregado.

- Logs de execução são salvos em `/var/opt/pgbouncer/log/pgbouncer.log`.

# Configuração

Exemplo de arquivo de configuração:

```ini
[pgbouncer]
listen_port = 5432
listen_addr = 10.27.38.2
auth_type = md5
auth_file = /etc/opt/pgbouncer/userlist.txt
pool_mode = transaction
admin_users = postgres
unix_socket_dir = /tmp

[databases]
* = host=127.0.0.1 port=5432 auth_user=postgres
```

# Tags

- `pgbouncer`: Executa todo o role.

- `pgbouncer:conf`: Atualiza a configuração.