# python

Ansible Role para instalar o [Python](https://www.python.org/).

São instalados os pacotes do Python 2 e Python 3 do Debian, além do `virtualenv`
atualizado em `/usr/local/bin`, o que permite criar `virtualenv`s com as versões
mais atuais do `pip`.

PS: O Python 2 e `virtualenv` são instalados como padrão por questões de
compatibilidade deste _role_. O Python 2 é obsoleto, e ao invés de usar o
`virtualenv`, o ideal é usar `python3 -m venv`.

## Variáveis

- `python_install_python2`: Instala os pacotes do Python 2. Default: `yes`.
- `python_install_python3`: Instala os pacotes do Python 3. Default: `yes`.
- `python_install_virtualenv`: Instala o `virtualenv` atualizado em
  `/usr/local/bin`. Default: `yes`.

## Tags

- `python`: executa todo o role.

## Compatibilidade

- Debian Stretch
- Debian Buster
