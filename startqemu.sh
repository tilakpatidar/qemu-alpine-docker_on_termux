qemu-system-aarch64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only,file=$PREFIX/share/qemu/edk2-aarch64-code.fd \
  -netdev user,id=n1,hostfwd=tcp::2222-:22,hostfwd=tcp::5353-:53,hostfwd=udp::5353-:53,hostfwd=tcp::8080-:80,hostfwd=udp::6767-:67 -device virtio-net,netdev=n1 \
  -nographic alpine.img
