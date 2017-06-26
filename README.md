Este repositório contém roles do
[Ansible](https://docs.ansible.com/ansible/index.html).

Os roles são desenvolvidos e testados apenas no **Debian**, exceto
discriminado na documentação específica do role.

Os termos de uso podem ser encontrados no arquivo `COPYING` na raíz deste
repositório.

# Como usar

- Configurar um submódulo do Git para os roles:

```bash
git submodule add https://github.com/zanardo/ansible-roles roles/zanardo
```

Observe que os roles devem permanecer no subdiretório `zanardo` dentro de um
diretório contido no seu `roles_path`, e os roles devem ser chamados via
`zanardo/nome- do-role`, para manter a compatibilidade com as dependências
entre roles e não poluir seu /namespace/ de roles locais.
