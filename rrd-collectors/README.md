Ansible Role para instalar os coletores básicos do rrd, diretamente dos
binários de release em `https://github.com/zanardo/rrd-collectors`.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```
roles:

  - { role: rrd-collectors }
```

# Variáveis

- `rrd_collectors_version`: Versão a ser instalada. Ex: `0.1`.

- `rrd_collectors_host`: Servidor onde o `rrd` está instalado. Ex: `localhost`.

- `rrd_collectors_port`: Porta do servidor onde o `rrd` está instalado. Ex: `23456`.

- `rrd_collectors_iftraff_interfaces`: Interfaces a serem monitoradas pelo
  coletor `iftraff`. Ex: `[eth0, eth1]`.

- `rrd_collectors_df_mounts`: Pontos de montagem a serem monitorados pelo coletor `df`. Ex:
```
- mount: "/"
  name: "root"
- mount: "/var"
  name: "var"
```
