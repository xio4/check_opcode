#!/bin/bash

LIB_DIR="$1"
OPCODE="$2"

for fn in $LIB_DIR/*; do
    if [ -f "$fn" ]; then

        opCount=`objdump -d $fn | grep -e "\s$OPCODE" | wc -l`

        if [ $opCount -gt 0 ]; then
            echo "$fn"
        fi
    fi
done
