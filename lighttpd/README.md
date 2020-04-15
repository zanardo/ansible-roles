# lighttpd

Ansible Role para instalar e configurar o [lighttpd](https://www.lighttpd.net/).

## Variáveis

- `lighttpd_conf`: Caminho local para o arquivo de configurações
  `lighttpd.conf`. Caso a variável não seja definida, as configurações default
  do pacote do Debian serão mantidas.

## Tags

- `lighttpd`: Executa o role completo.
- `lighttpd:conf`: Copia o arquivo de configuração e reinicia o lighttpd caso
  exista alguma mudança.

## Compatibilidade

- Debian Stretch
- Debian Buster
