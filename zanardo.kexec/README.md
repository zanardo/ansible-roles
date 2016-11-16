Ansible Role para instalar o pacote `kexec-tools`, para reiniciar o kernel sem
um reboot completo a frio.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.kexec }
```

# Tags

- `kexec`: Executa todo o role.
