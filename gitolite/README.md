Ansible Role para instalar e configurar o **[gitolite](http://gitolite.com/)**
no Debian.

# Variáveis

- `gitolite_gitdir`: diretório onde os dados e repositórios serão instalados
  (default: `/var/lib/gitolite3`).

- `gitolite_gituser`: usuário a ser criado para acesso via SSH aos repositórios
  (default: `gitolite3`).

- `gitolite_adminkey`: chave pública de ssh do usuário administrador.

# Tags

- `gitolite`: executa todo o role.
