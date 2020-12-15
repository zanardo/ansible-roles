# docker-compose

Ansible Role para instalar/atualizar o [Docker Compose](https://github.com/docker/compose).

O `docker-compose` é instalado em um virtualenv em `/opt/docker-compose`. São criados symlinks para
os scripts em `/usr/local/bin`. É usado o Python 3 do sistema.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

* `docker_compose_version`: Versão do docker-compose a ser instalada. Caso a variável não seja
  definida, a última versão será instalada (porém não será atualizada automaticamente).

## Tags

- `docker-compose`: Executa o role completo.

## Compatibilidade

- Debian Buster
