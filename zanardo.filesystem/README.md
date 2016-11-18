Ansible Role para criar filesystems (sistemas de arquivos).

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.filesystem }
```

# Variáveis

- `filesystem_fs`: (opcional) lista de dicionários com os filesystems a serem
  criados. Ex:

```yaml
filesystem_fs:
  - dev: /dev/vg0/squid_cache
    fstype: ext4
```

# Tags

- `filesystem`: Executa todo o role.
