Ansible Role para instalar o [Git](https://git-scm.com/), compilado do
código-fonte.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook e 
configure a versão do Git a ser instalada:

```yaml
roles:

  - { role: zanardo.git, git_version: "x.y.z" }
```

Carregue o script de completion adicionando as seguintes linhas
no seu `~/.bashrc`:

```bash
test -d /opt/git/etc/bash_completion.d/git &&
   source opt/git/etc/bash_completion.d/git
```

# Variáveis

- `git_version`: Versão do Git a ser instalada.

# Ações

As seguintes mudanças são feitas no sistema:

- São instalados pacotes necessários para compilação, instalação e execução do
  Git.

- O Git é instalado em `/opt/git`.
