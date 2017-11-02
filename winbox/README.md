Ansible Role para instalar o [Winbox](http://www.mikrotik.com/), gerenciador
gráfico para roteadores Mikrotik. O Winbox é um arquivo executável para
Windows, e roda emulado no Wine.

# Variáveis

- `winbox_version`: Versão do Winbox a ser instalada.

# Como rodar o Winbox

Em uma sessão do X:

```bash
wine /opt/winbox/winbox.exe
```

# Compatibilidade

- Debian Jessie
- Debian Stretch
