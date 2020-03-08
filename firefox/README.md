Ansible Role para instalar o **Mozilla Firefox**, com binário baixado
diretamente do site oficial.

# Variáveis

- `firefox_path`: Destino da instalação. Default: `/opt/firefox`.
- `firefox_version`: Versão do Firefox a ser instalada.
- `firefox_lang`: Idioma a ser instalado (default `en-US`). Segue a mesma
  lógica do URL de download.

# Compatibilidade

- Debian Stretch
- Debian Buster
