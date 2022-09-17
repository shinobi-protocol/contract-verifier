FROM ubuntu:jammy

RUN apt-get update && apt-get install -y binaryen=105-1 git curl build-essential llvm clang jq
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN $HOME/.cargo/bin/rustup update
RUN $HOME/.cargo/bin/rustup install 1.60.0
RUN $HOME/.cargo/bin/rustup default 1.60.0
RUN $HOME/.cargo/bin/rustup target add wasm32-unknown-unknown
COPY fetch_codehash.sh ./fetch_codehash.sh