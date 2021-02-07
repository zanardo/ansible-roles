# syncthing

Ansible Role para instalar o [Syncthing](https://syncthing.net/).

O Syncthing é compilado do código-fonte. Para isto, é necessário setar a
seguinte variável para a instalação do Go: `go_version`.

Nenhum processo é carregado na inicialização. Para carregar o processo, digite
com seu usuário:

```bash
systemctl --user enable --now syncthing.service
```

## Variáveis

- `syncthing_version`: Versão do Syncthing a ser instalada.

## Tags

- `syncthing`: Executa todo o role.

## Compatibilidade

- Debian Buster
