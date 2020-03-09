# sysctl

Ansible Role para definir configurações do _kernel_ via parâmetros do `sysctl`.

Os parâmetros são salvos em `/etc/sysctl.d/local.conf` e definidos
imediatamente.

## Variáveis

```yaml
sysctl_set:
  vm.dirty_ratio: 10
  vm.dirty_background_ratio: 5
```

## Tags

- `sysctl`: Aplica todo o role.

# Compatibilidade

- Debian Stretch
- Debian Buster
