Ansible Role para instalar o [Supervisor](http://supervisord.org/).

O **Supervisor** fornece o gerenciamento de carregamento e reinicialização de
processos, e é usado nos outros roles.

# Variáveis

- `supervisor_conf`: Path para o arquivo de configuração `supervisord.conf`.
   Caso indefinida, mantém-se o arquivo padrão do Debian.

# Tags

- `supervisor`: Executa todo o role.

# Compatibilidade

- Debian Stretch
- Debian Buster
