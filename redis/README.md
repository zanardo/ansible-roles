# redis

Ansible role para instalar e configurar o [Redis](http://redis.io/).

## Variables

- `redis_conf`: Define o caminho local para o template que irá substituir o
  arquivo de configurações do Redis. Caso não definida, será usado o arquivo de
  configurações default da distribuição para o Redis.

## Tags

- `redis`: Executa o role completo.
- `redis:conf`: Atualiza o arquivo de configurações e reinicia o Redis caso
  necessário.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Debian Bullseye
