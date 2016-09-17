Ansible Role para instalar o [Winbox](http://www.mikrotik.com/), gerenciador
gráfico para roteadores Mikrotik. O Winbox é um arquivo executável para
Windows, e roda emulado no Wine.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook e configure a
versão do Winbox a ser instalada:

```yaml
roles:

  - { role: zanardo.winbox, winbox_version: "x.y.z" }
```

# Variáveis

- `winbox_version`: Versão do Winbox a ser instalada.

# Ações

As seguintes mudanças são feitas no sistema:

- O dpkg é configurado para suportar a arquitetura `i386`.

- O Wine é instalado.

- O executável do Winbox é instalado em `/opt/winbox`.

# Como rodar o Winbox

Em uma sessão do X:

```bash
wine /opt/winbox/winbox.exe
```
