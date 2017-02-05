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

# Tags

- `users`: Executa todo o role.
