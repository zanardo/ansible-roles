Ansible Role para instalar o [Winbox](http://www.mikrotik.com/), gerenciador
gráfico para roteadores Mikrotik. O Winbox é um arquivo executável para
Windows, e roda emulado no Wine.

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
