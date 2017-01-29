Ansible Role para instalar e configurar o **[gitolite](http://gitolite.com/)**
no Debian.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook, e configure
as variáveis conforme exemplo abaixo:

````yaml
roles:

  - role: zanardo.gitolite
	gitolite_adminkey: "....admin ssh public key..."
````

# Variáveis

- `gitolite_gitdir`: diretório onde os dados e repositórios serão instalados
  (default: `/var/lib/gitolite3`).

- `gitolite_gituser`: usuário a ser criado para acesso via SSH aos repositórios
  (default: `gitolite3`).

- `gitolite_adminkey`: chave pública de ssh do usuário administrador.

# Tags

- `gitolite`: executa todo o role.
