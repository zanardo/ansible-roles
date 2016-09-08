Ansible Role para instalar e configurar o **dnsmasq** no Debian.

O **dnsmasq** fornece um resolvedor recursivo de DNS, além de um servidor DHCP.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook e configure o
caminho do arquivo de configurações:

```
roles:

  - role: zanardo.dnsmasq
    dnsmasq_conf: "files/dnsmasq.conf"
```

# Variáveis

- `dnsmasq_conf`: Path local para o arquivo com as configurações do dnsmasq.
