Ansible role for installing [Redis](http://redis.io/).

# Variables

- `redis_conf`: Optional. Defines the local path to the template that will replace Redis configuration file.

# Tags

- `redis`: Runs the entire role.

- `redis:conf`: Update the configuration file.

# Compatibility

- Debian Wheezy
- Debian Jessie
- Debian Stretch