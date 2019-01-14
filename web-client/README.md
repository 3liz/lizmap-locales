
It is not recommended to modify by hand, `po` and `pot` files into `web-client/`!

We prefer to translate strings with Transifex, and then import translations
into Lizmap.

pot files must be generated directly from Lizmap properties files.


Be sure you have installed Transifex cli, but also PHP-cli and its mbstring extension
(`apt-get install php7.2-mbstring`).

Updating the list of strings to translate (pot files)
-----------------------------------------------------

You must generate the `.pot` files, from the `.properties` files.

You need to install lizmap. The branch of lizmap should match the current
branch of lizmap-locales. Then you have to execute this command from the 
web_client directory, by giving the path to the `lizmap/` directory:

```
cd web-client/
./update_from_lizmap.sh /path/to/lizmap/
```

Then you push them to Transifex, by indicating the branch (indicate the good branch name !!)

```
./push_to_transifex.sh master
or
./push_to_transifex.sh lizmap_3_2
```


Updating translated strings
---------------------------

When some new translations are available in Transifex, you can import them
into Lizmap.

First retrieve translated string from Transifex, it updates po files:

```
./update_from_transifex.sh master
or
./update_from_transifex.sh lizmap_3_2
```

Then you update `.properties` files from `po` files with:

```
./push_to_lizmap.sh /path/to/lizmap/
```



You can then commit them.
