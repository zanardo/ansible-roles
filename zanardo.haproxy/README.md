Ansible Role para instalar e configurar o [HAProxy](http://www.haproxy.org/).

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.haproxy }
```

# Variáveis

- `haproxy_conf`: Caminho local para o arquivo de configurações `haproxy.cfg`.
  Caso a variável não seja definida, as configurações default do pacote do
  Debian serão mantidas.

# Tags

- `haproxy`: Executa o role completo.

- `haproxy:conf`: Copia o arquivo de configuração e reconfigura o HAProxy caso
  exista alguma mudança.
