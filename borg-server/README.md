Ansible Role para configurar um servidor de backups para o
[Borg](http://borgbackup.readthedocs.io/en/stable/), com acesso dos clientes via
SSH por liberação de chave pública, e apenas um usuário de sistema para receber
os backups, com restrição de diretório.

# Variáveis

- `borg_version`: versão do Borg a ser instalada (pelo role `zanardo.borg`).

- `borg_server_user`: nome do usuário de sistema para salvar os backups.
  Default: `borg`.

- `borg_server_home`: path para o home do usuário definido em
  `borg_server_user`. Default: `/home/borg`.

- `borg_server_ssh_keys`: dicionário com os nomes e chaves públicas de SSH.
  Exemplo:

```yaml
borg_server_ssh_keys:
  - name: fulano
    key: "ssh-rsa 123ABC123ABC...."
  - name: ciclano
    key: "ssh-rsa ABC123ABC123...."
```


# Ações

As seguintes mudanças são feitas no sistema:

- É criado o usuário de sistema com nome definido na variável
  `borg_server_user`, e home definido pela variável `borg_server_home`.

- Dentro de `borg_server_home`, são criados diretórios com nome de cada valor em
  `name` da variável `borg_server_ssh_keys`. Esses diretórios serão a raíz dos
  backups acessíveis para cada chave de SSH.

- As chaves públicas definidas na variável `borg_server_ssh_keys` são liberadas
  em `~/.ssh/authorized_keys`, para o usuário `borg_server_user`. É configurada
  uma restrição para que somente possa ser executado o Borg, com acesso a
  repositórios na pasta liberada para cada chave.
