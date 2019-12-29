Ansible role para instalar e configurar o [Redis](http://redis.io/).

# Variables

- `redis_conf`: Opcional. Define o caminho local para o template que irá
  substituir o arquivo de configurações do Redis.

# Tags

- `redis`: Executa o role completo.

- `redis:conf`: Atualiza o arquivo de configurações e reinicia o Redis.

# Compatibilidade

- Debian Stretch
- Debian Buster
