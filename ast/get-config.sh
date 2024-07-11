#!/bin/bash

version=`ocamlfind query -format %v zarith`
major=$(echo $version | cut -d "." -f 1)
minor=$(echo $version | cut -d "." -f 2)
echo "[%%define Z_version (${major}, ${minor})]"
