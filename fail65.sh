#!/bin/bash

get_fail65() {
    local path="$1"
    local fail65=$(du -hs "$path" 2>/dev/null | cut -f1)
    echo $fail65
}

items=$(ls -A)

for item in $items; do
    fail65=$(get_fail65 "$item")
    echo -e "$fail65\t$item"
done | sort -rh -k1,1