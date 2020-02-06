#!/bin/bash

r2 malloc://1024 -c "e asm.arch=x86; e asm.bits=32; aei; aeim; wx $(rasm2 -a x86 -b 32 -f kamikaze.x86-32.asm)@300; aer PC=300; Vpp;"
