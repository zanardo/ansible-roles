Ansible Role para definir usuários (através de chamadas ao módulo `user`).

# Variáveis

- `users_users`: dicionário com os usuários a serem criados. Ex:

```yaml
users_users:
  - name: joe
    createhome: yes
    home: /home/joe
    shell: /bin/bash
    skeleton: /etc/skel
    system: no
```

- `users_password`: dicionário com as senhas a serem definidas. Ex:

```yaml
users_password:
	- name: root
	  password: "$6$Gl5HSt6TkJY..."
```

Para gerar a senha criptografada, instale o pacote `whois` no Debian e use:

```bash
mkpasswd --method=sha-512
```

# Distribuições suportadas

- Debian Stretch
- Debian Buster

# Tags

- `users`: Executa todo o role.
