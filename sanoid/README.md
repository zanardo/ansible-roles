# sanoid

Ansible Role para instalar e configurar o
**[sanoid](https://github.com/jimsalterjrs/sanoid/)** no Debian.

## Variáveis

 - `sanoid_conf`: Opcional. Path para o arquivo local de configurações. Ex:
   `files/sanoid/sanoid.conf`. Caso não seja definida, nenhum arquivo de configuração será
   criado em `/etc/sanoid/sanoid.conf`.

## Tags

- `sanoid`: Executa todo o role.
- `sanoid:conf`: Atualiza a configuração.

## Compatibilidade

- Debian Bullseye
