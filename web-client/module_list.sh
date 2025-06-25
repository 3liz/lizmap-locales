#!/usr/bin/env bash

export MODULES="action admin dataviz filter view"

# all locales that are available into transifex. See below for each branch
export AVAILABLE_LOCALES=""

# locales that are almost complete and so, that should be pushed to Lizmap. See below for each branch
# in lizmap, we want the long language code (ex: ja_JP). If the translator registered
# only into the short code, indicate the code as : short code/long code (ex: ja/ja_JP)
export OFFICIAL_LOCALES=""

export LOCALES_BRANCH=$(git branch | grep \* | cut -d ' ' -f2)

case $LOCALES_BRANCH in
    master)
      export LIZMAP_BRANCH=master
      export TX_BRANCH=master
      export AVAILABLE_LOCALES="cs_CZ de_DE el_GR es_ES eu_ES fi_FI fr_FR gl_ES hu_HU it_IT ja_JP nl_NL no_NO pl_PL pt_BR pt_PT ro_RO ru_RU sv_SE sl_SI sk_SK uk_UA"
      export AVAILABLE_SHORT_LOCALES="cs de el es eu fi fr gl hu_HU it ja nl no pl_PL pt_BR pt ro ru sv_SE sl sk uk"
      export OFFICIAL_LOCALES="cs_CZ de_DE el_GR es_ES eu_ES fi_FI fr_FR gl_ES hu_HU it_IT ja_JP nl_NL no_NO pl_PL pt_BR pt_PT ro_RO ru_RU sv_SE sl_SI sk_SK uk_UA"
    ;;
    lizmap_3_10)
        export LIZMAP_BRANCH=release_3_10
        export TX_BRANCH=lizmap-3-10
        export AVAILABLE_LOCALES="cs_CZ de_DE el_GR es_ES eu_ES fi_FI fr_FR gl_ES hu_HU it_IT ja_JP nl_NL no_NO pl_PL pt_BR pt_PT ro_RO ru_RU sv_SE sl_SI sk_SK uk_UA"
        export AVAILABLE_SHORT_LOCALES="cs de el es eu fi fr gl hu_HU it ja nl no pl_PL pt_BR pt ro ru sv_SE sl sk uk"
        export OFFICIAL_LOCALES="cs_CZ de_DE el_GR es_ES eu_ES fi_FI fr_FR gl_ES hu_HU it_IT ja_JP nl_NL no_NO pl_PL pt_BR pt_PT ro_RO ru_RU sv_SE sl_SI sk_SK uk_UA"
        ;;
    lizmap_3_9)
      export LIZMAP_BRANCH=release_3_9
      export TX_BRANCH=lizmap-3-9
      export AVAILABLE_LOCALES="cs_CZ de_DE el_GR es_ES eu_ES fi_FI fr_FR gl_ES hu_HU it_IT ja_JP nl_NL no_NO pl_PL pt_BR pt_PT ro_RO ru_RU sv_SE sl_SI sk_SK uk_UA"
      export AVAILABLE_SHORT_LOCALES="cs de el es eu fi fr gl hu_HU it ja nl no pl_PL pt_BR pt ro ru sv_SE sl sk uk"
      export OFFICIAL_LOCALES="cs_CZ de_DE el_GR es_ES eu_ES fi_FI fr_FR gl_ES hu_HU it_IT ja_JP nl_NL no_NO pl_PL pt_BR pt_PT ro_RO ru_RU sv_SE sl_SI sk_SK uk_UA"
      ;;
    lizmap_3_8)
      export LIZMAP_BRANCH=release_3_8
      export TX_BRANCH=lizmap-3-8
      export AVAILABLE_LOCALES="cs_CZ de_DE el_GR es_ES eu_ES fi_FI fr_FR gl_ES hu_HU it_IT ja_JP nl_NL no_NO pl_PL pt_BR pt_PT ro_RO ru_RU sv_SE sl_SI sk_SK uk_UA"
      export AVAILABLE_SHORT_LOCALES="cs de el es eu fi fr gl hu_HU it ja nl no pl_PL pt_BR pt ro ru sv_SE sl sk uk"
      export OFFICIAL_LOCALES="cs_CZ de_DE el_GR es_ES eu_ES fi_FI fr_FR gl_ES hu_HU it_IT ja_JP nl_NL no_NO pl_PL pt_BR pt_PT ro_RO ru_RU sv_SE sl_SI sk_SK uk_UA"
    ;;
    *)
    echo "Error module_list.sh: branch $LOCALES_BRANCH not supported"
    exit 1
    ;;
esac
