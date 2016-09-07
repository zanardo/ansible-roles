Ansible Role para instalar e configurar o [Nginx](http://www.nginx.org/).

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```
roles:

  - { role: nginx }
```

# Variáveis

- `nginx_conf`: Caminho local para o arquivo de configurações `nginx.conf`.
  Caso a variável não seja definida, as configurações default do pacote do
  Debian serão mantidas.

# Tags

- `nginx`: Executa o role completo.

- `nginx:conf`: Copia o arquivo de configuração e reinicia o Nginx caso exista
  alguma mudança.
