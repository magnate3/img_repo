#!/bin/sh
#-kernel ~/riscv_debug/linux-5.14/arch/riscv/boot/Image  -append "root=/dev/vda ro console=ttyS0,115200n8 earlycon=sbi" \
qemu-system-riscv64 -nographic -machine virt  -bios fw_jump.elf -m 1024    \
     -device loader,file=u-boot.bin,addr=0x80200000 \
     -kernel ~/riscv_debug/linux-5.14.g/arch/riscv/boot/Image  -append "root=/dev/vda ro console=ttyS0,115200n8  earlycon" \
     -initrd $PWD/initramfs.cpio.gz

     #-device virtio-blk-device,drive=hd0 \
     #-S -gdb tcp::1234
     #-device virtio-blk-device,drive=hd0 \
     #-S -gdb tcp::1234




