#!/bin/bash

if [[ -f `ocamlc -where`/../zarith/META ]]; then
  meta=`ocamlc -where`/../zarith/META
elif [[ -f `ocamlc -where`/zarith/META ]]; then
  meta=`ocamlc -where`/zarith/META
fi

version=$(cat ${meta} | grep -m1 "version" | cut -d "=" -f 2 | tr -d '"')
major=$(echo $version | cut -d "." -f 1)
minor=$(echo $version | cut -d "." -f 2)
echo "[%%define Z_version (${major}, ${minor})]"
