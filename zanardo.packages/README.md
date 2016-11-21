Ansible Role para instalar pacotes via apt.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.packages }
```

# Variáveis

- `packages_install`: lista com nomes de pacotes a serem instalados.

```yaml
packages_install:
	- rsync
	- tmux
```

# Tags

- `packages`: Executa todo o role.
