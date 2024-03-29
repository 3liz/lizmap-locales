# ![logo](icon.png "lizmap") Lizmap Web Application Locales

**Do not make any pull request on this repository**.
Translators must use only the Transifex web interface.

You'll find here the localization files for the web application 
[Lizmap Web Client](https://github.com/3liz/lizmap-web-client/) (the web-client directory).

Lizmap web application, by 3LIZ.

    begin       : 2011-11-01
    copyright   : (C) 2011 by 3liz
    authors     : René-Luc D'Hont and Michaël Douchin
    email       : info@3liz.com
    website     : http://www.3liz.com


## Contributing

We are using [Transifex](https://www.transifex.com/3liz-1/lizmap-locales/) to
translate our application. So we prefer you contribute on Transifex instead
of modifying directly this repository.

On transifex, you can help to translate existing strings, or you can create a new
language and translate into this language. When you are finished to create your
localization, open an issue on github to inform us the new language, and
we will update localization strings into lizmap. 


## Web Client locales

All the locales for the Web Client is in the web-client directory.

Files are .po file, but there are not used directly by Lizmap, as Lizmap is
using an other file format (properties). We are using a script to convert po files 
to properties files and vice-versa.

Lizmap is using the [Jelix Framework](https://jelix.org). You may also want to
translate it. Got to [its transiflex project](https://www.transifex.com/3liz-1/jelix/).


## QGIS Plugin locales

All the locales are handled by [qgis-plugin-ci](https://github.com/opengisch/qgis-plugin-ci/).

## Lizmap sources

Lizmap web client: https://github.com/3liz/lizmap-web-client/

Lizmap plugin: https://github.com/3liz/lizmap-plugin/

## For core contributor

See [DEV.md](./DEV.md) to see instructions to push and pull translated files to/from Transifex for the web client.
