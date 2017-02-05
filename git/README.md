Ansible Role para instalar o [Git](https://git-scm.com/), compilado do
código-fonte.

# Como usar

Configure o PATH e carregue o script de completion adicionando as seguintes
linhas no seu `~/.bashrc`:

```bash
export PATH="/opt/git/bin:$PATH"
test -f /opt/git/etc/bash_completion.d/git &&
   source /opt/git/etc/bash_completion.d/git
```

# Variáveis

- `git_version`: Versão do Git a ser instalada.

# Ações

As seguintes mudanças são feitas no sistema:

- São instalados pacotes necessários para compilação, instalação e execução do
  Git.

- O Git é instalado em `/opt/git`.
