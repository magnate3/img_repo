#!/bin/sh
#-kernel ~/riscv_debug/linux-5.14/arch/riscv/boot/Image  -append "root=/dev/vda ro console=ttyS0,115200n8 earlycon=sbi" \
qemu-system-riscv64 -nographic -machine virt  -bios fw_jump.elf -m 1024    \
     -kernel ~/riscv_debug/linux-5.14/arch/riscv/boot/Image  -append "root=/dev/vda ro  console=ttyS0,115200n8  earlycon" \
     -netdev user,id=net0 -device virtio-net-device,netdev=net0 \
     -initrd $PWD/tftp/initramfs.cpio.gz
     #-initrd $PWD/initrd.tftp.cpio.gz
     #-initrd $PWD/initrdcache.rv.cpio.gz
     #-initrd $PWD/initrd2.rv.cpio.gz
     #-initrd initrams.my.gz  
     #-initrd $PWD/initrd2.rv.cpio.gz
     #-initrd initramfs.cpio.gz.old
     #-initrd $PWD/initrd2.rv.cpio.gz
     #-initrd $PWD/initramfs.cpio.gz
     #-initrd $PWD/initrd.rv.cpio.gz.x86

     #-initrd $PWD/initramfs.cpio.gz
     #-device virtio-blk-device,drive=hd0 \
     #-S -gdb tcp::1234
     #-device virtio-blk-device,drive=hd0 \
     #-S -gdb tcp::1234

      #-device virtio-net-device,netdev=usernet \
      #-netdev user,id=usernet,hostfwd=tcp::10000-:22 \



