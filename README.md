# What is this?

This repository contains [Ansible](https://docs.ansible.com/ansible/index.html) roles.

Each role lives inside a subdirectory. The roles are aggregated inside a monolithic repository (instead of split ones) because it is easier to maintain.

# How to use the roles?

The roles need to be added to `zanardo/` namespace, because some roles have dependencies on other roles inside this repository. The best way is using a Git submodule:

```bash
git submodule add https://github.com/zanardo/ansible-roles roles/zanardo
```

Then, you can use the roles inside your playbooks. Example:

```yaml
- { role: zanardo/dnsmasq }
```

# Some notes

- The roles are developed and tested only on Debian. Each role should have the compatibility matrix inside their own README.

- There is no guarantee of "ABI" stability. These roles are created solely for my own needs, and shared so people can adapt them for their needs or get some ideas from them. They will be modified or deleted without notice.

- Some roles and READMEs are in Portuguese, as the most Git commit history. Sorry about the language mess :)

# Copyright

- The terms of use can be found in `COPYING` file, at the root of this repository.