#!/bin/bash
cargo build
cargo build --release
cargo build --target x86_64-unknown-linux-musl
cargo build --target x86_64-unknown-linux-musl --release
/bin/cp ./target/x86_64-unknown-linux-musl/release/violette .
vercel
vercel --prod
