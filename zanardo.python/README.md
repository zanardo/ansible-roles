Ansible Role para instalar o [Python](https://www.python.org/), compilado do
código-fonte, no Debian.

O Python é instalado em `/opt/pythonX.Y` (onde `X.Y` é `2.7`, `3.4`, etc).

# Como usar

Para usar este Role, adicione dentro do grupo `roles' do Playbook e
configure as versões do Python a serem instaladas::

```
roles:

  - { role: zanardo.python, python_versions: ["x.y.z", "a.b.c"] }
```

# Variáveis

- `python_versions`: Versões do Python a serem instaladas, em formato de lista.
  Ex: `["2.7.12", "2.5.2"]`.
