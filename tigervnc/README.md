Ansible Role para instalar o [TigerVNC](http://tigervnc.org/), compilado do
código-fonte.

# Variáveis

- `tigervnc_version`: Versão do TigerVNC a ser instalada.

# Ações

As seguintes mudanças são feitas no sistema:

- São instalados pacotes necessários para compilação, instalação e execução do
  TigerVNC.

- O TigerVNC é instalado em `/opt/tigervnc`.

# Como carregar o TigerVNC

```bash
/opt/tigervnc/bin/vncviewer ....
```

# Compatibilidade

- Debian Jessie