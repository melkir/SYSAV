#!/bin/bash
# script6.sh
# Affiche le login et le shell par défaut de l'utilisateur courant.

if [ $# != 1 ]; then
    echo "Bad argument number";
    exit 1;
fi

if [ ! -e $1 ]; then
    echo "File $1 not found" 1>&2
fi

# echo $(cat $1 | grep $USERNAME | cut -d : -f 1,7)
echo $(cat $1 | grep etu | cut -d : -f 1,7)

