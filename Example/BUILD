#!/bin/bash
HELP="Usage BUILD <input files> <output file>"
if [ $# -lt 2 ]; then
    echo $HELP
    exit 1
fi
docker run -e WASM_INPUT=$1 -e WASM_OUTPUT=$2 --rm -v /c/Users/bjw2/Documents/Git/webassembly-builder/Example:/src -it webassembly