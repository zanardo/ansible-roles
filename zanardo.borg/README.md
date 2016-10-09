Ansible Role para instalar o
[Borg](http://borgbackup.readthedocs.io/en/stable/), do binário oficial.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook e 
configure a versão do Borg a ser instalada:

```yaml
roles:

  - { role: zanardo.borg, borg_version: "x.y.z" }
```

# Variáveis

- `borg_version`: Versão do Borg a ser instalada.

# Ações

As seguintes mudanças são feitas no sistema:

- O binário do Borg é instalado em `/usr/local/bin/borg`.
