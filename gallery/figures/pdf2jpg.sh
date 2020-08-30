#!/bin/bash

for f in $@; do
    NAME=$(echo "$f" | cut -f 1 -d '.')
    echo "Converting $f to $NAME.png ..."
    convert -density 150 $f -quality 90 $NAME.png
done
