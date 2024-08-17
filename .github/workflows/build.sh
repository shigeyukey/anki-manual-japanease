#!/bin/bash

# (cd && \
#   curl -LO https://github.com/ankitects/mdbook-linkcheck/releases/download/anki-2022-11-17/mdbook.tar.zst && \
#   tar xaf mdbook.tar.zst)
(cd && \
  curl -LO https://github.com/rust-lang/mdBook/releases/download/v0.4.40/mdbook-v0.4.40-x86_64-unknown-linux-gnu.tar.gz && \
  tar -xzf mdbook-v0.4.40-x86_64-unknown-linux-gnu.tar.gz)

export PATH="$HOME:$PATH"
if [ "$CHECK" = "" ]; then
    rm $HOME/mdbook-linkcheck
fi
mdbook build

