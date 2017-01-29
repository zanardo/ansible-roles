Ansible Role para instalar o [Redis](http://redis.io/) no Debian.

O **Redis** é um serviço de estrutura de dados em memória RAM.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.redis }
```

# Variáveis

- `redis_conf`: Opcional, define o path local para o template que irá
  substituir o arquivo de configurações do Redis.

# Tags

- `redis`: Executa todo o role.

- `redis:conf`: Atualiza o arquivo de configurações.
