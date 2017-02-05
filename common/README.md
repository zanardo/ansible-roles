Ansible Role para configurar uma instalação básica do Debian, para uso no
Brasil.

# Variáveis

- `apt_proxy_host`: opcional, define host para proxy para cache dos pacotes do
  Debian (apt-cacher-ng, Squid, etc). Ex: `meu-proxy.intranet`.

- `apt_proxy_port`: opcional (mas obrigatório quando `apt_proxy_host` estiver
   definido). Define a porta do proxy para cache dos pacotes do Debian.

- `apt_proxy_no_https`: opcional, define se o proxy será desativado para
  repositórios acessados via `https://`. Ex: `True`.

# Ações

As seguintes configurações são feitas:

- Configura um proxy HTTP para o Apt, caso as variáveis `apt_proxy_host` e
  `apt_proxy_port` estejam definidas e o servidor e porta estejam abertas para
  o host provisionado. Caso contrário, a configuração de proxy é removida.

- Configura o arquivo `/etc/apt/sources.list` para uso dos mirrors do Debian no
  Brasil, incluindo o repositório de Backports e de Sources, além das
  distribuições `contrib` e `non-free`.

- Configura o servidor de SSH para não validar o DNS reverso do cliente.

- Configura o Grub para somente aguardar 1 segundo no menu do bootloader.

- Instala o `apt-dater-host' para gerenciar as atualizações de segurança via
  `apt-dater'.
