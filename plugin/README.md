
It is not recommended to modify by hand, `ts` files into `plugin/`!
We prefer to translate strings with Transifex, and then translation are imported
into Lizmap plugin.

Updating the list of strings to translate for Lizmap plugin
-----------------------------------------------------------

You must copy the `i18n/lizmap_en.ts` file from lizmap-plugin source.
Then you push it to Transifex:

```
tx push -s
```


Updating translated strings
---------------------------

When some new translations are available in Transifex, you can import them.

First retrieve translated string from Transifex:

```
tx pull
```

Then copy all files to lizmap-plugin locales directory `i18n`.
You must then commit files in `lizmap-plugin` and `lizmap-locales`.
