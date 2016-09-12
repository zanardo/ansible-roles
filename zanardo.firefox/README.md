Ansible Role para instalar o Mozilla Firefox.

O Firefox é obtido diretamente pela distribuição da Mozilla, já compilado. Ele
é instalado em `/opt/firefox`, e um link simbólico para o executável é criado
em `/usr/local/bin/firefox`.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook e configure a
versão a ser instalada.

```yaml
roles:

  - { role: zanardo.firefox, firefox_version: "x.y.z" }
```

# Variáveis

- `firefox_version`: Define a versão a ser instalada. Ex: `48.0.1`.

- `firefox_lang`: Define o idioma a ser instalado. Default: `en-US`.

# Tags

- `firefox`: Executa o role completo.
