curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install x86_64 toolchain (as flutter cross-compiles from aarch64 to x86_64)
# rustup target add x86_64-apple-darwin
