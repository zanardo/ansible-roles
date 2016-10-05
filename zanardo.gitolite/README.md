Ansible Role para instalar e configurar o **[gitolite](http://gitolite.com/)**
no Debian.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook, e configure
a variável com a versão a ser instalada:

````yaml
roles:

  - role: zanardo.gitolite
  	gitolite_version: "x.y.z"
	gitolite_dir: "/srv/git"
	gitolite_admin_ssh_public_key: "files/gitolite/admin.pub"
````

# Variáveis

- `gitolite_version`: versão do gitolite a ser instalada.

- `gitolite_dir`: path para o home do usuário `git`, a ser criado.

- `gitolite_admin_ssh_public_key`: path local para o arquivo contendo a chave
  pública do SSH para o administrador. O nome do arquivo deve conter o nome do
  usuário do gitolite. Ex: `myuser.pub`.

# Tags

- `gitolite`: executa todo o role.
