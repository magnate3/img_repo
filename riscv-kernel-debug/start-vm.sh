#!/bin/sh
#-kernel ~/riscv_debug/linux-5.14/arch/riscv/boot/Image  -append "root=/dev/vda ro console=ttyS0,115200n8 earlycon=sbi" \
qemu-system-riscv64 -nographic -machine virt  -bios fw_jump.elf    \
     -kernel ~/riscv_debug/linux-5.14/arch/riscv/boot/Image  -append "root=/dev/vda ro console=ttyS0,115200n8 " \
     -drive file=ubuntu-20.04.2-preinstalled-server-riscv64.img,format=raw,id=hd0 \
     -device virtio-blk-device,drive=hd0 

#     -S -gdb tcp::1234




