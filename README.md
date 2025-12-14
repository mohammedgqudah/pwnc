# Pwnc

A shell script to download a challenge from pwn.college.

1. Start the challenge on pwn.college
2. In your projects/ctf folder run `pwnc challenge-name`
3. `cd challenge-name`

In the folder a `solve.py` is created

```py
from pwn import *

prog = "$BINARY-patched"

elf = ELF(prog)
context.binary = elf
context.aslr = False

if "remote" in sys.argv:
    session = ssh('hacker', 'dojo.pwn.college')
    p = session.process(f'/challenge/$BINARY')
else:
    p = process(prog)
    if "gdb" in sys.argv:
        gdb.attach(p)

p.interactive()
```
it will also install pwntools in the virtual environment (managed by UV).

# Installation

### prerequisites
1. `patchelf`
```
# apt
sudo apt-get install patchelf

# pacman
sudo pacman -S patchelf
```
2. `uv` <https://docs.astral.sh/uv/getting-started/installation/>

### install
```
git clone https://github.com/mohammedgqudah/pwnc
cd pwnc
make install
```
