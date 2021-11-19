#! /usr/bin/env bash

# Log every command and exit on fail.
set -e -x

# Install TeX and tools.
apt install -y \
  texlive \
  texlive-fonts-extra \
  texlive-lang-all \
  texlive-bibtex-extra \
  biber \
  latexmk

# Install basic developer tools.
apt install -y \
  fish \
  git \
  vim
