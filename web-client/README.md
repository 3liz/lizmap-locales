# Workflow

It is not recommended to modify by hand, `po` and `pot` files into `web-client/`!

We prefer to translate strings with Transifex, and then import translations
into Lizmap.

pot files must be generated directly from Lizmap properties files.

Be sure you have installed Transifex cli, but also PHP-cli and its mbstring extension
(For example `apt-get install php8.2-cli php8.2-mbstring`). Install also
[Composer](https://getcomposer.org/), and run `composer install` into
the `web-client` directory.

You also need to retrieve the source code of lizmap, and install them somewhere.

```bash
git clone https://github.com/3liz/lizmap-web-client.git
```

## Updating the list of strings to translate (pot files)

First, you must generate the `.pot` files, from the `.properties` files.

You must checkout the correct branch in `/path/to/lizmap-web-client/` and check you have a clean git status.

Then you have to execute this command from the web_client directory, by giving the 
path to the `lizmap-web-client/.jelixlocales.ini` file:

```bash
cd web-client/
./update_from_lizmap.sh /path/to/lizmap-web-client/.jelixlocales.ini
```

Then you push them to Transifex and commit on this repository.

```bash
./push_to_transifex.sh
```

## Updating translated strings

When some new translations are available in Transifex, you can import them
into Lizmap.

First retrieve translated string from Transifex, it updates po files:

You might need to use `-f`

```bash
./update_from_transifex.sh
```

Then be sure that you don't have uncommitted changes into your lizmap-web-client
repository, because the following script will checkout the branch
corresponding to the current branch of lizmap-locales.

Then execute this script:

```bash
./push_to_lizmap.sh /path/to/lizmap-web-client/.jelixlocales.ini
```

It updates `.properties` files  into lizmap-web-client from `po` files. You can
then commit updated files into lizmap-web-client and in this repository.
