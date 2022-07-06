#!/bin/sh
#-kernel ~/riscv_debug/tiny/linux-5.14/arch/riscv/boot/Image  -append "root=/dev/vda ro console=ttyS0,115200n8 earlycon=sbi" \
qemu-system-riscv64 -nographic -machine virt  -bios fw_jump.elf    \
     -kernel ~/riscv_debug/linux-5.14/arch/riscv/boot/Image   -append "console=ttyS0"
      




