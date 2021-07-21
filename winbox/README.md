# winbox

Ansible Role para instalar o [Winbox](http://www.mikrotik.com/), gerenciador gráfico para
roteadores Mikrotik. O Winbox é um arquivo executável para Windows, e roda emulado no
Wine.

O Winbox é copiado em `/opt/winbox`, e um script é criado em `/usr/local/bin/winbox` para
facilitar a execução.

## Variáveis

- `winbox_version`: Versão do Winbox a ser instalada.

## Tags

- `winbox`: executa todo o role.

## Compatibilidade

- Debian Buster
- Debian Bullseye
