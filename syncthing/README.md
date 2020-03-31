# syncthing

Ansible Role para instalar o [Syncthing](https://syncthing.net/).

O Syncthing é instalado diretamente dos repositórios _apt_ oficiais do projeto
(a versão no repositório do Debian é muito antiga). Sempre é instalada a última
versão estável, e é possível atualizar via `apt upgrade`.

Nenhum processo é carregado na inicialização. Para carregar o processo, digite
com seu usuário:

```bash
systemctl --user enable --now syncthing.service
```

## Variáveis

- `syncthing_apt_repo`: Repositório do _apt_, para uso de mirrors locais.
  Default: `https://apt.syncthing.net/`.

## Tags

- `syncthing`: Executa todo o role.

## Compatibilidade

- Debian Stretch
- Debian Buster
