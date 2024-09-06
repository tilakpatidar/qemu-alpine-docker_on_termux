qemu-system-aarch64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only,file=$PREFIX/share/qemu/edk2-aarch64-code.fd \
  -netdev user,id=n1,hostfwd=tcp::2222-:22,hostfwd=tcp::53-:53,hostfwd=udp::53-:53,hostfwd=udp::67-:67,hostfwd=tcp::80-:80 -device virtio-net,netdev=n1 \
  -nographic alpine.img
