Ansible Role para instalar e configurar o [libvirtd](http://libvirt.org) no
Debian.

O **libvirt** abstrai o gerenciamento de máquinas virtuais e cuida do início e
shutdown dos guests.

# Ações

- Instala o libvirt e carrega o serviço.

- Configura opções em `/etc/default/libvirt-guests` de acordo com variáveis
  abaixo.

- Carrega o *KSM* (Kernel Same-Page Merging) para compartilhar páginas de
  memória das máquinas virtuais do KVM.

# Variáveis

- `libvirt_guests_on_boot`: define a política de boot das máquinas virtuais ao
  iniciar o serviço `libvirt-guests`. Opções: `start` (inicia as máquinas que
  estavam rodando no shutdown) ou `ignore` (deixa o daemon *libvirt* carregar
  as máquinas configuradas com auto-start). Default: `ignore`.

- `libvirt_guests_start_delay`: tempo em segundos para aguardar entre o
  carregamento de cada máquina virtual. Default: `0` (carregamento paralelo).

- `libvirt_guests_on_shutdown`: define a política de shutdown das máquinas
  virtuais. Opções: `shutdown` para desligar, e `suspend` para suspender.
  Default: `shutdown`.

- `libvirt_guests_paralled_shutdown`: número de máquinas virtuais para fazer o
  shutdown paralelamente. Default: `0` (todas).

- `libvirt_guests_shutdown_timeout`: tempo em segundos para aguardar a máquina
  virtual encerrar após um shutdown, até forçar seu encerramento. Default: `30`
  segundos.

- `libvirt_ksm_enable`: define se o KSM irá ser ativado. Opções: `True` ou
  `False`. Default: `True`.

- `libvirt_ksm_sleep_millisecs`: tempo em milisegundos entre cada execução do
  KSM. Default: `100`.

# Tags

- `libvirt`: executa todo o role.

# Compatibilidade

- Debian Jessie
- Debian Stretch