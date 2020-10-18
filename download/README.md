# download

Ansible Role para fazer download de um arquivo, salvar o arquivo na máquina local para um cache, e
fazer upload para o destino.

Este role deve ser usado nos demais roles que fazem download de artefatos externos. Ex:

```yaml
- name: faz download do go
  include_role:
    name: zanardo/download
  vars:
    url: "https://storage.googleapis.com/golang/go{{ go_version }}.linux-amd64.tar.gz"
    file: "go{{ go_version }}.linux-amd64.tar.gz"
    dir: "/tmp"
```

## Variáveis obrigatórias

- `url`: Url completo para download do arquivo.
- `file`: Nome do arquivo (usado para o cache local e envio para o destino).
- `dir`: Diretório para envio no destino (default `download_dest_dir`). O caminho completo será `{{ dir }}/{{ file }}`.

## Variáveis default

- `download_local_cache_dir`:  Diretório da máquina local onde os arquivos serão salvos. Default:
  `~/.cache/ansible`.
- `download_dest_dir`: Diretório da máquina de destino onde os arquivos serão enviados. Default:
  `/tmp/`.

## Compatibilidade

- Debian Stretch
- Debian Buster
