Ansible Role para instalar o [Git](https://git-scm.com/), compilado do
código-fonte.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook e 
configure a versão do Git a ser instalada:

```
roles:

  - { role: git, git_version: "x.y.z" }
```

Você deverá adicionar o diretório `/opt/git` no seu `$PATH`, além
de carregar o arquivo `/opt/git/share/git-core/bash_completion`
no Bash. Exemplo de adição ao `~/.bashrc`:

```
export PATH="/opt/git/bin:$PATH"
test -f /opt/git/share/git-core/bash_completion && \
   source /opt/git/share/git-core/bash_completion
```

# Variáveis

- `git_version`: Versão do Git a ser instalada.

# Ações

As seguintes mudanças são feitas no sistema:

- São instalados pacotes necessários para compilação, instalação e execução do
  Git.

- O Git é instalado na árvore `/opt/git`.
