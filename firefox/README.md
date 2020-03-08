Ansible Role para instalar o **Mozilla Firefox**, com binário baixado
diretamente do site oficial.

# Variáveis

- `firefox_path`: Destino da instalação. Default: `/opt/firefox`.
- `firefox_version`: Versão do Firefox a ser instalada. Caso seja `latest`, a
  última versão será instalada, porém não será feito upgrade caso uma versão já
  esteja instalada. Use `firefox_chown` para que seu usuário possa atualizar a
  instalação pelo próprio atualizador do Firefox.
- `firefox_lang`: Idioma a ser instalado (default `en-US`). Segue a mesma
  lógica do URL de download.
- `firefox_chown`: Usuário dono do diretório de instalação. Default `root`. Mude
  para seu usuário para ter poder de atualização via atualizador do Firefox.

# Compatibilidade

- Debian Stretch
- Debian Buster
