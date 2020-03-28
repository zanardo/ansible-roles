# wireguard

Ansible Role para instalar e configurar túneis criptografados usando o
[Wireguard](https://www.wireguard.com/).

A configuração é feita usando o `systemd-network`.

Note que as liberações no firewall deverão ser configuradas separadamente.
Exemplo: usando o role `zanardo/shorewall`.

## Variáveis

- `wireguard_delete`: Lista contendo nomes de interfaces para serem desativadas
  e excluídas (caso não sejam mais utilizadas).

- `wireguard_devs`: Lista de dicionários contendo as configurações do Wireguard,
  para cada interface. Exemplo:

```yaml
wireguard_devs:
  - name: wg0
    description: "Tunnel Teste"
    private_key: "ABCDE............"
    public_key: "FGHIJ..........."
    listen_port: "58423"
    address: "10.212.135.1/32"
    allowed_ips:
      - "10.212.135.0/24"
    routes:
      - gateway: "10.212.135.1/32"
        destination: "10.212.135.0/24"
    peers:
      - description: "laptop"
        public_key: "QWERTY.........."
        endpoint: "192.168.1.1:51002"
        allowed_ips:
          - "10.212.135.2/32"
```

## Tags

- `wireguard`: Executa todo o role.

## Compatibilidade

- Debian Buster
