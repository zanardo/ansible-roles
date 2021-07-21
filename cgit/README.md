# cgit

Ansible Role para instalar e configurar o [cgit](https://git.zx2c4.com/cgit/about/).

É necessário instalar separadamente um servidor web com suporte à `CGI`, como por exemplo
`lighttpd` ou `Apache`.


## Variáveis

- `cgit_conf`: Path local para o arquivo com as configurações do cgit.

## Tags

- `cgit`: Instala e configura.
- `cgit:conf`: Atualiza a configuração.

## Compatibilidade

- Debian Stretch
- Debian Buster
