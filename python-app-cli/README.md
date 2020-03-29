# python-app-cli

Ansible Role para instalar/atualizar pacotes do Python via `pip` em um
`virtualenv`, e opcionalmente criar um _symlink_ dos executáveis para um caminho
no `PATH`.

Este role foi criado para instalar e atualizar ferramentas de desenvolvimento.
Exemplos: `flake8`, `black`, `isort`, `ipython`, `mypy`, etc.

## Dependências

- O Python é instalado pelo role `zanardo/python`.

## Variables

- `python_app_cli_python_executable`: Define o executável do Python a ser usado
  para criação do `virtualenv` e instalação dos pacotes. Default: `python3`.
  Atenção: caso haja mudança significativa de versão do Python, é recomendável
  apagar o `virtualenv` e recriá-lo.

- `python_app_cli_root`: Define o diretório raíz de criação dos `virtualenvs`.
  Default: `/opt`. Pode ser sobrescrita na configuração de cada pacote.

- `python_app_cli_link_dest`: Define o diretório onde serão criados os
  _symlinks_. Default: `/usr/local/bin`.

- `python_app_cli_index_url`: Define a configuração `--index-url` do `pip`.
  Default: `https://pypi.python.org/simple`. Pode ser alterado para um
  repositório privado.

- `python_app_cli_extra_index_url`: Define a configuração `--extra-index-url` do
  `pip`. Pode ser usado em combinação com um repositório privado em
  `python_app_cli_index_url`, para um _failover_ de pacotes não existentes para
  serem buscados no PyPi. Default: `https://pypi.python.org/simple`.

- `python_app_cli`: Dicionário que define os aplicativos a serem instalados.

  A chave do dicionário é o nome do pacote a ser instalado.

  Subchaves - todas são opcionais:

  - `version`: Contém a versão do pacote a ser instalada. Caso não passada, será
     instalada sempre a última versão (porém não será feita uma atualização nas
     execuções posteriores).

  - `links`: contém uma lista com os nomes dos scripts a terem o _symlink_
    criado em `python_app_cli_link`. Caso não seja passada, o pacote será
    instalado sem criação de _symlinks_.

  - `debian_packages`: contém nomes de pacotes do Debian a serem instalados
    antes da instalação do pacote do Python, os quais são dependência para
    instalação e execução. Opcional.

  - `path`: contém o diretório onde o pacote será instalado. Caso não passada,
    usa o default definido em `python_app_cli_root` do role.

  - `link_dest`: contém o diretório onde serão criados os _symlinks_ definidos
    em `links`. Caso não passada, usa o default em `python_app_cli_link_dest` do
    role.

  - `python_executable`: contém o executável do Python. Caso não passada, usa o
    default definido em `python_app_cli_python_executable` do role.

  Exemplo:

```yaml
python_app_cli:
    isort:
      version: "x.y.z"
      links: ["isort"]
    ansible:
      version: "y.z.x"
      links: ["ansible", "ansible-playbook"]
      debian_packages: ["libyaml-dev", "libffi-dev"]
      path: "/usr/local/ansible"
      links_dest: "/opt/bin"
    black:
      links: ["black", "blackd"]
      python_executable: "python3.8"
```

## Tags

- `python_app_cli`: Executa o role completo.

## Compatibilidade

- Debian Stretch
- Debian Buster
