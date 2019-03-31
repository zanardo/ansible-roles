Ansible Role for setting kernel parameters via sysctl.

Parameters will be saved in `/etc/sysctl.d/local.conf` and set immediately.

# How to use

```yaml
- { role: zanardo/sysctl }
```

Sysctl parameters are set from `sysctl_set` dictionary. Example:

```yaml
sysctl_set:
  vm.dirty_ratio: 10
  vm.dirty_background_ratio: 5
```

# Tags

- `sysctl`: Run entire role.

# Compatibility

- Debian Jessie
- Debian Stretch
- Ubuntu Cosmic
