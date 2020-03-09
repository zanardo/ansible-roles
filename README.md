# Ansible Roles

## O que é isto?

Este repositório contém *roles* do
[Ansible](https://docs.ansible.com/ansible/index.html).

Cada role fica dentro de um subdiretório. Os roles são agregados em um
repositório monolítico (ao invés de vários separados) para facilitar a
manutenção.

## Como utilizar os roles?

Os roles precisam ser adicionados usando o namespace `zanardo/`, pois alguns
roles possuem dependências de outros roles, e definem as dependências como
`zanardo/nome-do-role`. A melhor forma de usar os roles no seu projeto é usando
um submódulo do Git:

```bash
git submodule add https://github.com/zanardo/ansible-roles roles/zanardo
```

Após isso, você pode usar os roles dentro dos *playbooks*. Exemplo:

```yaml
roles:
  - zanardo/dnsmasq
```

## Observações

- Os roles são desenvolvidos para Debian. Cada role geralmente tem uma matriz de
  compatibilidade em seu próprio README.

- Não existe nenhuma garantia de estabilidade "ABI". Os roles são criados para
  atender minhas próprias necessidades, e compartilhados para que outras pessoas
  possam adaptá-los em seus projetos, ou obter algumas ideias deles. Eles
  poderão ser modificados ou excluídos sem aviso prévio.

## Copyright

- Os termos de uso podem ser encontrados no arquivo `COPYING` na raíz deste
  repositório.
