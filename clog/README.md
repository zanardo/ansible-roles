Ansible Role para instalar o script do cliente do
[clog](https://github.com/zanardo/clog).

# Variáveis

- `clog_version`: versão do script do clog a ser instalado.

- `clog_users`: usuários em que o `clog send-queue` será agendado no cron.

- `clog_send_queue_interval_minutes`: intervalo em minutos para envio da fila
   do clog.

- `clog_send_queue_server`: servidor que receberá a fila (ex:
  `http://clog:7890`).

# Ações

As seguintes mudanças são feitas no sistema:

- O script cliente do clog é instalado em `/usr/local/bin/clog`.

- Caso a variável `clog_users` seja definida, será configurada uma entrada no
  cron para cada usuário, para a execução do envio da fila.
