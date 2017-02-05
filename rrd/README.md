Ansible Role para instalar e configurar o servidor
**[rrd](https://github.com/zanardo/rrd)** no Debian.

# Variáveis

- `rrd_version`: versão do `rrd` a ser instalada.

- `rrd_port`: porta UDP que o servidor `rrd` escutará para receber as coletas.

- `rrdweb_port`: porta TCP que o servidor `rrdweb` escutará para o acesso web.

# Ações

- São instalados pacotes necessários para executar o `rrd`.

- É criado o diretório `/opt/rrd` contendo os scripts para execução.

- É criado o diretório `/var/lib/rrd` para conter os dados.

- O Supervisor é configurado para inicializar os processos `rrd` e `rrdweb`.
