#!/bin/bash

pnpm forc fmt --check
cargo fmt --check
pnpm forc build
cargo clippy --all-features --all-targets -- -D warnings
pnpm prettier:check
