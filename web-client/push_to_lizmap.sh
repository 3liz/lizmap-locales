#!/usr/bin/env bash
set -e

JELIX_LOCALES_INI="$1"

if [ "$1" == "" ]; then
    echo "Error: path to the .jelixlocales.ini file is missing"
    exit 1
fi

if [ ! -f "$JELIX_LOCALES_INI" ]; then
    echo "Error: given path seems to be not a .jelixlocales.ini file"
    exit 2
fi



LOCALES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source $LOCALES_DIR/module_list.sh

if [ "$2" != "" ]; then
  MODULES="$2"
fi


#(cd $LIZMAP_DIR/../ && git checkout $LIZMAP_BRANCH)

for MODULE in $MODULES
do
    for LIZLOCALE in $OFFICIAL_LOCALES
    do
        LIZLOCALEFULL=$LIZLOCALE

        if [[ "$LIZLOCALE" == */* ]]; then
           LIZLOCALEFULL=$(echo $LIZLOCALE | cut -d '/' -f2)
           LIZLOCALE=$(echo $LIZLOCALE | cut -d '/' -f1)
        fi

        if [ -f "$LOCALES_DIR/$LIZLOCALE/$MODULE.po" ]; then
            $LOCALES_DIR/vendor/bin/jelixlocales convert:po:properties \
             --config=$JELIX_LOCALES_INI \
            $MODULE $LIZLOCALEFULL $LOCALES_DIR/$LIZLOCALE/
        fi
    done
done
