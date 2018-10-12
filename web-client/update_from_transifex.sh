#!/usr/bin/env bash

LOCALES_DIR="$(dirname $0)"

source $LOCALES_DIR/module_list.sh

ALL_LOCALES=$(echo "$AVAILABLE_LOCALES" | sed -r 's/ /,/g')

echo $ALL_LOCALES

tx pull -l "$ALL_LOCALES"
#--branch $LOCALES_BRANCH


