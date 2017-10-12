Ansible Role para instalar e configurar o serviço `apt-cacher-ng`.

O apt-cacher-ng fornece um proxy/cache HTTP para cache local de pacotes e
índices de repositórios do Debian e derivados.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
  roles:

    - zanardo/apt-cacher-ng
```

# Variáveis

- `apt_cacher_cachedir`: Default: `"/var/cache/apt-cacher-ng"`. Diretório de cache.

- `apt_cacher_port`: Default: 3142. Porta TCP onde o apt-cacher-ng irá escutar
  as conexões.

- `apt_cacher_bindaddress`: Default: `"0.0.0.0"`. Endereço IP onde o
  apt-cacher-ng irá escutar as conexões. `0.0.0.0` para todas as interfaces.

- `apt_cacher_proxy`: Default: `""`. Proxy HTTP pai usado pelo apt-cacher-ng.

# Distribuições Linux suportadas

 - Debian Jessie
