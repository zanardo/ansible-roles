Ansible Role para instalar o servidor [clogd](https://github.com/zanardo/clog).

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook e 
configure a versão do clogd a ser instalado:

```yaml
roles:

  - { role: zanardo.clogd }
```

# Variáveis

- `clogd_version`: versão do clogd a ser instalado.

- `clogd_bind_host`: endereço de escuta do servidor (ex: `0.0.0.0`).

- `clogd_bind_port`: porta de escuta do servidor (ex: `7890`).

- `clogd_pg_host`: endereço do servidor PostgreSQL.

- `clogd_pg_port`: porta do servidor PostgreSQL.

- `clogd_pg_db`: nome do banco de dados no servidor PostgreSQL.

- `clogd_pg_user`: role de login do banco de dados no servidor PostgreSQL.

- `clogd_pg_pass`: senha de login do banco de dados no servidor PostgreSQL.


# Ações

As seguintes mudanças são feitas no sistema:

- São instaladores pacotes para compilação e execução do `clogd` e seus módulos
  necessários (ex: cliente para acesso ao PostgreSQL).

- O clogd é instalado em `/opt/clogd`.

- É criado o usuário `clogd`.

- São criados os diretórios `/etc/opt/clogd` e `/var/opt/log/clogd`.

- É instalado o unit `clogd` do Supervisor.

- As configurações são instaladas em `/etc/opt/clogd/clogd.yml`.

- Os logs são salvos em `/var/opt/log/clogd`.
