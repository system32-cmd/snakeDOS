#!/bin/bash

set -e

mkdir -p build

nasm -f bin boot/boot.asm -o build/boot.bin

gcc -m32 -ffreestanding -c kernel/kernel.c -o build/kernel.o

ld -m elf_i386 -T kernel/linker.ld -o build/kernel.bin build/kernel.o

cat build/boot.bin build/kernel.bin > build/snakeos.img

echo "Built SnakeOS image!"