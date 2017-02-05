Ansible Role para instalar e configurar o [Shorewall](http://www.shorewall.net/).

O Shorewall é um wrapper para configurar o firewall do iptables no Linux, e
permite manter as configurações em arquivos-textos organizados.

# Variáveis

- `shorewall_conf`: diretório absoluto onde os arquivos que deverão ser
  copiados estão salvos. Todos os arquivos desse diretório serão copiados para
  `/etc/shorewall` no destino. Default: `{{ playbook_dir }}/files/{{
  ansible_hostname }}/shorewall/*`.

# Ações

- Instala os pacotes do Shorewall.

- Configura o Shorewall para ser carregado na inicialização.

- Copia os arquivos de configuração, checa-os e reinicia o Shorewall, aplicando
  as regras de firewall.

# Tags

- `shorewall`: executa o role completo.

- `shorewall:conf`: copia arquivos de configuração e reinicia Shorewall caso
  exista alguma mudança.

