Ansible Role para configurar uma instalação básica do Debian, para uso no
Brasil.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.common }
  ```

# Variáveis

- `apt_proxy`: Opcional, define o proxy para cache dos pacotes do Debian (ex:
  apt-cacher-ng, Squid, etc). Ex: `http://meu-proxy:3142/`.

- `apt_proxy_no_https`: Opcional, define se o proxy será desativado para
  repositórios acessados via `https://`. Ex: `True`.

# Ações

As seguintes configurações são feitas:

- Configura um Proxy HTTP para o Apt, caso a variável `apt_proxy` esteja
  definida.

- Configura o arquivo `/etc/apt/sources.list` para uso dos mirrors do Debian no
  Brasil, incluindo o repositório de Backports e de Sources, além das
  distribuições `contrib` e `non-free`.

- Configura o servidor de SSH para não validar o DNS reverso do cliente.

- Configura o Grub para somente aguardar 1 segundo no menu do bootloader.
