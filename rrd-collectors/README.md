Ansible Role para instalar os coletores básicos do rrd, diretamente dos scripts
em `https://github.com/zanardo/rrd-collectors`.

# Variáveis

- `rrd_collectors_version`: versão a ser instalada. Ex: `0.1`.

- `rrd_collectors_host`: servidor onde o `rrd` está instalado. Ex: `localhost`.

- `rrd_collectors_port`: porta do servidor onde o `rrd` está instalado. Ex: `23456`.

- `rrd_collectors_iftraff_interfaces`: interfaces a serem monitoradas pelo
  coletor `iftraff`. Ex: `[eth0, eth1]`.

- `rrd_collectors_df_mounts`: pontos de montagem a serem monitorados pelo coletor `df`. Ex:
```yaml
- mount: "/"
  name: "root"
- mount: "/var"
  name: "var"
```

# Tags

- `rrd-collectors`: executa todo o role.
