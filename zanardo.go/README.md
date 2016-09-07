Ansible Role para instalar o [Go](https://golang.org/), com binário baixado
diretamente do site oficial. O Go é instalado em `/usr/local/go`.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```
roles:

  - { role: zanardo.go, go_version: "x.y.x" }
```
