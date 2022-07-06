#!/bin/sh
#-kernel ~/riscv_debug/linux-5.14/arch/riscv/boot/Image  -append "root=/dev/vda ro console=ttyS0,115200n8 earlycon=sbi" \
qemu-system-riscv64 -nographic -machine virt  -bios fw_jump.elf -m 1024    \
     -kernel ~/riscv_debug/linux-5.14.g/arch/riscv/boot/Image  -append "root=/dev/vda ro  kgdboc=ttyS0,115200n8   kgdbwait" \
     -drive file=rootfs.ext2,format=raw,id=hd0 \
     -device virtio-blk-device,drive=hd0 \
     -serial tcp::4321,server
     #-device virtio-blk-device,drive=hd0 \
     #-S -gdb tcp::1234




