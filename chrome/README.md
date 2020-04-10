# chrome

Ansible Role para instalar o **Google Chrome**, com binário baixado diretamente
do site oficial.

É instalada a última versão estável. O repositório do Google Chrome é
adicionado, para que o aplicativo possa ser atualizado via _apt_.

**Atenção**: O repositório em `/etc/apt/sources.list.d/google-chrome.list` é
fixado com `chattr +i` para evitar alterações. Isto foi feito para poder usar um
repositório de mirror interno, e o Google Chrome força o repositório padrão na
instalação e via cron todo dia. Isto irá afetar a desinstação. Caso deseje
desinstalar o Google Chrome, volte a permissão de modificação:

```bash
chattr -i /etc/apt/sources.list.d/google-chrome.list
```

## Variáveis

- `chrome_apt_repo`: Repositório do _apt_, para uso de mirrors locais. Default:
  `http://dl.google.com/linux/chrome/deb/`.

## Tags

- `chrome`: aplica todo do role.

## Compatibilidade

- Debian Stretch
- Debian Buster
