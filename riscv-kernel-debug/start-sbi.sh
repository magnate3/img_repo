#!/bin/sh
#-kernel ~/riscv_debug/linux-5.14/arch/riscv/boot/Image  -append "root=/dev/vda ro console=ttyS0,115200n8 earlycon=sbi" \
qemu-system-riscv64   -M virt -m 256M -nographic -bios  fw_payload.elf   -smp 5  \
     -s -S




