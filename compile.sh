#!/bin/bash

for i in {001..999}; do
  BIN="ex${i}"
  SRC="ex${i}.cuf"
  if [[ -e "${SRC}" && "${SRC}" -nt "${BIN}" ]]; then
    nvfortran -O3 -Mpreprocess -cuda -o "${BIN}" "${SRC}"
  fi
done
