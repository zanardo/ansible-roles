Ansible Role para instalar o tema **Greybird** do GTK.

O tema é obtido diretamente do repositório upstream e salvo dentro de
`~/.themes/Greybird` do usuário configurado em `gtk_theme_greybird_user`.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook.

```yaml
roles:

  - { role: zanardo.gtk-theme-greybird }
```

# Variáveis

- `gtk_theme_greybird_user`: Usuário em que o tema será instalado (em `~/.themes`).
