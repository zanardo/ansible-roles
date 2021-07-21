# ssh-authorized-keys

Role do Ansible para configurar chaves autorizadas no arquivo `~/.ssh/authorized_keys` de
usuários.

## Variáveis

- `ssh_authorized_keys`: Dicionário com os usuários de destino para serem configurados,
  contendo uma lista de chaves cada um. Exemplo:

```yaml
ssh_authorized_keys:
  root:
    - "ssh-rsa AAA...... foo@bar"
    - "ssh-rsa AAB...... foo@baz"
  usuario:
    - "ssh-rsa AAC...... foo@bah"
```

- `ssh_authorized_keys_remove`: Dicionário com mesmo formato de `ssh_authorized_keys`,
  porém com as chaves a serem removidas.

## Tags

- `ssh-authorized-keys`: Executa todo o role.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Debian Bullseye
