# docker

Ansible Role para instalar e configurar o **Docker**.

O Docker é instalado do repositório oficial do projeto, usando apt.

## Variáveis

- `docker_apt_repo`: Repositório apt do Docker. Permite alterar para mirror
  local. Default: `https://download.docker.com`.
- `docker_users`: usuários para adicionar ao grupo `docker`. Default: `[]`.
- `docker_daemon_config`: Configurações do daemon (salvas em
  `/etc/docker/daemon.json`). Configurar em YAML, e ela será convertida para
  JSON automaticamente. Default: `{}`, Exemplo:

```yaml
docker_daemon_config:
    "bip": "192.168.3.1/24"
    "ip-forward": no
    "ip-masq": no
    "iptables": no
```

## Tags

- `docker`: Executa todo o role.

## Compatibilidade

- Debian Buster
- Debian Bullseye
