Ansible Role para instalar o Mozilla Firefox. 

O Firefox é obtido pelo repositório `mozilla.debian.net`, e a versão estável é
instalada.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.firefox }
```

# Tags

- `firefox`: Executa o role completo.
