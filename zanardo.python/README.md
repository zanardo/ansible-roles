Ansible Role para instalar o [Python](https://www.python.org/).

São instalados os pacotes do Python 2.7 e Python 3.4 do Debian, além do
`virtualenv` atualizado em `/usr/local/bin`, o que permite criar virtualenvs
com as versões mais atuais do `pip`.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.python }
```

# Tags

- `python`: executa todo o role.
