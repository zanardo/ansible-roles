# python-src

Ansible Role para instalar o [Python](https://www.python.org/) compilado do
código-fonte.

O Python é instalado usando `make altinstall`, com os binários contendo o sufixo da
versão (ex: `python3.7`). Isto permite a instalação de várias versões concomitantemente,
sem a criação de binários que entrariam em conflito (ex: `python3`).

As versões são instaladas em `/usr/local/stow/python-X`, sendo que `X` é a versão
*major* e *minor* (ex: `3.7`), e depois o `stow` é utilizado para criar os *symlinks* em
`/usr/local`.

O *stow* é utilizado pois a compilação e instalação (`make altinstall`) é feita por um
usuário restrito (`_builder`) por questões de segurança, e os diretórios de destino da
instalação, dentro de `/usr/local/stow` são deste usuário, porém a execução do `stow`
para criação dos *symlinks* é feita via `root`.

No exemplo abaixo, vamos supor que o role é chamado com a seguinte variável:

```yaml
python_src_versions:
  - 3.7.6
  - 3.9.0
```

Neste caso, as versões seriam instaladas em:

- `/usr/local/stow/python-3.7`
- `/usr/local/stow/python-3.9`

Com a criação dos *symlinks*, os interpretadores poderiam ser chamados via:

- `/usr/local/bin/python3.7`
- `/usr/local/bin/python3.9`

Caso o role seja novamente executado com a variável abaixo, as instalações anteriores
seriam sobrescritas com as novas versões:

```yaml
python_src_versions:
  - 3.7.7
  - 3.9.1
```

## Variáveis

- `python_src_versions`: Lista com as versões a serem instaladas. Ex.: `["3.7.6", "3.9.0"]`.

## Tags

- `python-src`: executa todo o role.

## Compatibilidade

- Debian Stretch
- Debian Buster
- Arch
