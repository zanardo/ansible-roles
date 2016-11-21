Ansible Role para definir storage, como criação de physical volumes (PVs),
volume groups (VGs) e logical volumes (LVs) no LVM2, criação de sistema de
arquivos, e configuração de montagem em `/etc/fstab`.

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.storage }
```

# Variáveis

- `storage_lvm_vgs`: (opcional) lista de dicionários com os volume groups (VGs)
  a serem criados pelo LVM. Ex:

```yaml
storage_lvm_vgs:
  - name: vg0
    pvs:
	  - /dev/vdb
	  - /dev/vdc
```

- `storage_lvm_lvs`: (opcional) lista de dicionários com os logical volumes
  (LVs) a serem criados pelo LVM. Ex:

```yaml
storage_lvm_lvs:
  - name: squid_cache
    vg: vg0
	size: 50G
```

- `storage_fs`: (opcional) lista de dicionários com os filesystems a serem
  criados. Ex:

```yaml
storage_fs:
  - dev: /dev/vg0/squid_cache
    fstype: ext4
```

- `storage_mount`: (opcional) lista de dicionários com os filesystems a serem
  configurados para montagem em `/etc/fstab`. Ex:

```yaml
storage_mount:
  - fstype: ext4
    name: /var/spool/squid3
	src: /dev/vg0/squid_cache
	state: mounted
	owner: proxy	# chown, sem recursivo (somente raíz)
	group: proxy
```

# Tags

- `storage`: Executa todo o role.
