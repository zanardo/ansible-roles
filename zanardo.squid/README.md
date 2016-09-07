Ansible Role para instalar e configurar o
**[Squid](http://www.squid-cache.org/)** no Debian.

# Como usar

Para usar este Role, adicione dentro do grupo ``roles`` do Playbook:

```
roles:

  - { role: zanardo.squid }
```

# Variáveis

 - ``squid_conf``: Opcional. Path para o arquivo local de configurações. Ex:
   ``files/squid/squid.conf``. Caso não seja definida, as configurações padrões
   do pacote serão mantidas.
