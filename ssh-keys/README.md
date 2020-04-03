# ssh-keys

Role do Ansible para configurar chaves privadas e públicas em `~/.ssh` dos
usuários.

No momento, o role copia apenas os arquivos `~/.ssh/id_rsa` e
`~/.ssh/id_rsa.pub`.

**Cuidado**, pois os arquivos serão sobrescritos com as novas chaves, caso
existam!

**Atenção**: manter as variáveis de configuração criptografadas usando Ansible
Vault!

## Como gerar as chaves?

### Via script de atalho

* Para gerar as chaves:

```bash
roles/zanardo/ssh-keys/scripts/gera-chave.py usuario@host
```

* Copie e cole o conteúdo dentro da variável `ssh_keys`.

### Manualmente

* Para gerar as chaves:

```bash
ssh-keygen -C user@host -f ssh-key-tmp
```

* Copie o conteúdo do arquivo `ssh-key-tmp` para a variável `private_key`.

* Copie o conteúdo do arquivo `ssh-key-tmp.pub` para a variável `public_key`.

* Apague os arquivos:

```bash
shred -u ssh-key-tmp ssh-key-tmp.pub
```

## Variáveis

- `ssh_keys`: Dicionário com os usuários de destino para serem configurados,
  contendo as chaves privadas e públicas em cada um. Exemplo:

```yaml
ssh_keys:
  root:
    public_key: "ssh-rsa AAAA.... root@baz"
    private_key: |
      -----BEGIN OPENSSH PRIVATE KEY-----
      ...
      -----END OPENSSH PRIVATE KEY-----
  usuario:
    public_key: "ssh-rsa AAAA.... usuario@baz"
    private_key: |
      -----BEGIN OPENSSH PRIVATE KEY-----
      ...
      -----END OPENSSH PRIVATE KEY-----
```

## Tags

- `ssh_keys`: Executa todo o role.

## Compatibilidade

- Debian Stretch
- Debian Buster
