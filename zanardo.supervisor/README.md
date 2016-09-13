Ansible Role para instalar o [Supervisor](http://supervisord.org/) no Debian.

O **Supervisor** fornece o gerenciamento de carregamento e reinicialização de
processos, e é usado nos outros roles.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.supervisor }
```

# Tags

- `supervisor`: Executa todo o role.
