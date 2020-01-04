Ansible Role para instalar o
[Borg](http://borgbackup.readthedocs.io/en/stable/), do binário oficial.

# Variáveis

- `borg_version`: Versão do Borg a ser instalada.
- `borg_download_url`: URL para download do executável do Borg. Default
   na área de *releases* do Github.  
- `borg_download_sign_url`: URL para download da assinatura via GnuPG do
  executável do Borg. Default na área de *releases* do Github.

# Ações

As seguintes mudanças são feitas no sistema:

- O binário do Borg é instalado em `/usr/local/bin/borg`.

# Compatibilidade

- Debian Stretch
- Debian Buster
