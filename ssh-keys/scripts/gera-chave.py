#!/usr/bin/env python3

import os.path
import subprocess
import sys
from tempfile import TemporaryDirectory
from textwrap import indent


def read_file(path: str) -> str:
    with open(path) as fp:
        return fp.read().strip()


try:
    user_host = sys.argv[1]
except IndexError:
    print("usage: {} usuario@host".format(sys.argv[0]))

user = user_host.split("@")[0]

with TemporaryDirectory() as tmp_dir:
    pri_path = os.path.join(tmp_dir, "id_rsa")
    pub_path = os.path.join(tmp_dir, "id_rsa.pub")
    subprocess.run(
        args=["ssh-keygen", "-C", user_host, "-N", "", "-f", pri_path],
        stdout=subprocess.DEVNULL,
    )
    pri = indent(read_file(pri_path), "    ")
    pub = read_file(pub_path)

print(
    f"""

{user}:
  public_key: "{pub}"
  private_key: |
  {pri}

"""
)
