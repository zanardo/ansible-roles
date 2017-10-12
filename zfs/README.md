Ansible Role for installing ZFS on Linux.

ZFS is installed from Debian Backports, and the kernel module is loaded.

This role does not manage ZFS pools or filesystems.

# How to use

```yaml
- { role: zanardo/zfs }
```

# Tags

- `zfs`: Run entire role.

# Compatibility

- Debian Stretch
