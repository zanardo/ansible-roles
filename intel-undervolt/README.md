# intel-undervolt

Ansible Role para instalar o
[intel-undervolt](https://github.com/kitsunyan/intel-undervolt/).

O `intel-undervolt` é usado para controlar a voltagem e reduzir a temperatura
máxima do processador de alguns laptops.

## Variáveis

- `intel_undervolt_conf`: Path para o arquivo de configuração. Default: arquivo
  `files/intel-undervolt.conf.j2` do role.

## Tags

- `intel-undervolt`: Executa todo o role.
- `intel-undervolt:conf`: Atualiza o arquivo de configuração e reaplica a
  configuração.

## Compatibilidade

- Debian Bullseye
