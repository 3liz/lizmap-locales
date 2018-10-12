#!/usr/bin/env bash

export MODULES="jelix master_admin jacl2 jacl2db jacl2db_admin jauthdb_admin jcommunity admin dataviz view"

# all locales that are available into transifex
export AVAILABLE_LOCALES="cs_CZ de_DE el_GR es_ES eu_ES fi_FI fr_FR gl_ES hu_HU it_IT nl_NL pl_PL pt_BR pt_PT ro_RO ru_RU sv_SE sl_SL"

# locales that are almost complete and so, that should be pushed to Lizmap
export OFFICAL_LOCALES="cs_CZ de_DE el_GR es_ES eu_ES fi_FI fr_FR gl_ES hu_HU it_IT nl_NL pl_PL pt_BR pt_PT ro_RO ru_RU sv_SE sl_SL"

export LOCALES_BRANCH=$(git branch | grep \* | cut -d ' ' -f2)

case $LOCALES_BRANCH in
    master)
    #FIXME
    export LIZMAP_BRANCH=release_3_2
    ;;
    lizmap_3_2)
    export LIZMAP_BRANCH=release_3_2
    ;;
    *)
    echo "Error: branch $LOCALES_BRANCH not supported"
    exit 1
    ;;
esac

# FIXME
export MISSING_MODULES="ldap_dao"
