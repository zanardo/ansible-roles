Ansible Role para instalar e configurar o [Shorewall](http://www.shorewall.net/).

O Shorewall é um wrapper para configurar o firewall do iptables no Linux, e
permite manter as configurações em arquivos-textos organizados.

# Como usar

Para usar este Role, adicione dentro do grupo `roles' do Playbook:

```
roles:

  - { role: shorewall }
```

# Variáveis

- `shorewall_conf_local_path`: Diretório local, relativo ao playbook que
  incluiu o role,  onde os arquivos do Shorewall devem ser encontrados.
  Exemplo: `files/shorewall`.

- `shorewall_conf_files`: Lista contendo o nome dos arquivos de configurações,
  salvos em `shorewall_conf_local_path`, que serão copiados para
  `/etc/shorewall` da instalação sendo provisionada. Ex: `[zones, interfaces,
  rules]`. Os arquivos são copiados pelo módulo `template` do Ansible, portanto
  podem ter lógicas do Jinja2.

# Tags

- `shorewall`: Executa o role completo.

- `shorewall:conf`: Copia arquivos de configuração e reinicia Shorewall caso
  exista alguma mudança.
