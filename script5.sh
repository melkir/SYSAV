#!/bin/bash
# script5.sh
# script qui prend comme argument un fichier et transforme toutes les lettres de son contenu en majuscules.

if [ $# != 1 ]; then
    echo "Nombre d'arguments incorrect"
    exit 1
fi

if [ ! -e $1 ]; then
    echo "$1 n\'est pas un fichier ou n\'existe pas"
    exit 1
fi

echo $(cat $1 | tr a-z A-Z) > $1