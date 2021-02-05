# squid

Ansible Role para instalar e configurar o
**[Squid](http://www.squid-cache.org/)** no Debian.

## Variáveis

 - ``squid_conf``: Opcional. Path para o arquivo local de configurações. Ex:
   ``files/squid/squid.conf``. Caso não seja definida, as configurações padrões
   do pacote serão mantidas.

## Tags

- `squid`: Executa todo o role.
- `squid:conf`: Atualiza a configuração.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Debian Bullseye
