AS = nasm
ASFLAGS = -f elf32


.PHONY: all


all: bootloader kernel



kernel: kernel.c
	${HOME}/opt/cross/bin/i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

bootloader: boot.asm
	$(AS) $(ASFLAGS) boot.asm -o boot.o