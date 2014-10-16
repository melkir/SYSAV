#!/bin/bash
# script7.sh
# Copie de fichier

function Usage {
    echo "Usage: $0 <filesrc> <filedst>" 1>&2
    exit 1
}

if [ $# != 2 ]; then Usage; fi

if [ ! -e $1 ]; then
    echo "Source file $1 not found" 1>&2
fi

echo $(cat $1) > $2