#!/bin/bash

N_DIR=$1
LIBS=$2
TEMPL_DIR="$HOME/.TEMPLATE"

if [ ! -d "$N_DIR" ]; then
    mkdir "$N_DIR"
    cp $TEMPL_DIR/TEMPLATE.c "$N_DIR/$N_DIR.c"
    chmod 644 "$N_DIR/$N_DIR.c"
    cp $TEMPL_DIR/Makefile "$N_DIR/Makefile"
    sed -i.bak s/PROGRAM_NAME/$N_DIR/g "$N_DIR/Makefile"
    if [[ -z "$LIBS" ]]; then
        sed -i.bak s/-lLIBRARIES//g "$N_DIR/Makefile"
    else
        sed -i.bak s/LIBRARIES/$LIBS/g "$N_DIR/Makefile"
    fi
    rm "$N_DIR/Makefile.bak"
else
    echo "\"$N_DIR\" exists."
fi

