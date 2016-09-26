Ansible Role para instalar o [chrony](https://chrony.tuxfamily.org/) no Debian.

O **Chrony** é um servidor de NTP para sincronização de relógio.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.chrony }
```

# Variáveis

- `chrony_conf`: path local para o arquivo de configurações a ser usado.
  Opcional.

# Ações

- O pacote `chrony` é instalado no Debian, e o arquivo de configurações
  utilizado é o default, com exceção do uso dos servidores `ntp.br`.

- Caso a variável `chrony_conf` seja usada, pode-se instalar um arquivo de
  configurações customizado.

# Tags

- `chrony`: Executa todo o role.
