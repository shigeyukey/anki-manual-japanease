#!/bin/bash

(cd && \
  curl -LO https://github.com/ankitects/mdbook-linkcheck/releases/download/anki-2022-11-17/mdbook.tar.zst && \
  tar xaf mdbook.tar.zst && \
  cargo install mdbook-anchors)
export PATH="$HOME:$PATH"
if [ "$CHECK" = "" ]; then
    rm $HOME/mdbook-linkcheck
fi
mdbook build

