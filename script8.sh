#!/bin/bash
# script8.sh

function Usage {
    echo "Usage: $0 <file1> <file2> ... <file[n]>" 1>&2
    exit 1
}

# Verification des arguments
if [ $# = 0 ]; then Usage; fi

echo "Voulez-vous créer une archive"
echo " 1. avec l'extension .tar.gz"
echo " 2. avec l'extension .tar.bz2"
echo -e " 3. Quitter\n"
echo -n " Entrer un nombre (1-3): "
read answer
echo

case "$answer" in
1)
	tar -zcf compressed.tar.gz $@
	;;
2)
	tar -jcf compressed.tar.bz2 $@
	;;
3)
	exit
	;;
*)
	echo "There is no selection for $answer"
	;;
esac