Ansible Role para instalar o LVM2 e criar physical volumes (PVs), volume groups
(VGs) e logical volumes (LVs).

# Como usar

Para usar este Role, adicione dentro do grupo `roles` do Playbook:

```yaml
roles:

  - { role: zanardo.lvm }
```

# Variáveis

- `lvm_vgs`: (opcional) lista de dicionários com os volume groups (VGs) a serem
  criados. Ex:

```yaml
lvm_vgs:
  - name: vg0
    pvs:
	  - /dev/vdb
	  - /dev/vdc
```

- `lvm_lvs`: (opcional) lista de dicionários com os logical volumes (LVs) a serem
  criados. Ex:

```yaml
lvm_lvs:
  - name: squid_cache
    vg: vg0
	size: 50G
```

# Tags

- `lvm`: Executa todo o role.
