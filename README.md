# Pwnc

A shell script to download the challenge binary from a remote instance in pwn.college.

1. Start the challenge on pwn.college
2. In your projects/ctf folder run `pwnc challenge-name`
3. `cd challenge-name`

In the folder a `solve.py` is created

```py
from pwn import *
import sys

prog = sys.argv[1]

elf = ELF(prog)
context.binary = elf
if "remote" in sys.argv:
    s = ssh('hacker', 'dojo.pwn.college')
    p = s.shell(f'/challenge/{prog}')
else:
    p = process(prog)

p.interactive()
```
and pwntools is already installed in the virtual environment (managed by UV).

# Installation

```
git clone https://github.com/mohammedgqudah/pwnc
cd pwnc
make install
```
