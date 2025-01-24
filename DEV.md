## Documentation for core contributors

### Installing Transifex CLI

We are using Transifex, and so you will need their cli tool to push or pull
translations.

if you already contributed to the [lizmap documentation](https://github.com/3liz/lizmap-documentation), 
you have already installed tools, so you can jump directly to the next section.

It is recommended to install Virtualenv and to install Transifex into a 
dedicated Python environnement. For example:

```bash
virtualenv env/
env/bin/pip install transifex-client
``` 

You should create a `~/.transifexrc` file containing:

```ini
[https://www.transifex.com]
rest_hostname = https://rest.api.transifex.com
token         = TOKEN
```

In the password parameter, you should set an API Key [you have to generate from your
Transifex account](https://www.transifex.com/user/settings/api/).

### Managing locales of Lizmap Web Client

See [web-client/README.md](web-client/README.md).

### Adding a new language

The language should be created into Transifex. When there are enough translated
strings, you can download translated files with the script. See README.md web-client.

A new language code for web-client should be added into `web-client/module_list.sh` and `.tx/config`.

### Releasing a new version 

When a new major version of lizmap has been released, you have to follow these
steps: 

1. On the master branch, edit the `web-client/module_list.sh` to reference the new branch
2. Edit the `.tx/config` to reference all pot of each modules, in alphabetical order, where its `locales` directory is not empty
3. commit
4. create a new branch `lizmap_X_Y` (replace X and Y) from master
  ```
git checkout -b lizmap_X_Y
```
5. Into lizmap-web-client :
   1. checkout the corresponding branch
   2. edit `.jelixlocales.ini`
   3. verify that it references all modules
   4. Update the version at the top of the file
6. update EN locales from the lizmap-web-client branch and push to Transifex
  ```
cd web-client
./update_from_lizmap.sh /path/to/lizmap-web-client/.jelixlocales.ini
./push_to_transifex.sh
```
7. On Transifex : https://app.transifex.com/3liz-1/lizmap-locales/content/
   1. Update all new files about **name** and **Category**
   2. Copy the **slug** into the name : `lizmap-X-Y--actionpot`
   3. Add the category : `lizmap_X_Y`
8. check strings of your language into Transifex, then :
  ```
./update_from_transifex.sh
./push_to_lizmap.sh /path/to/lizmap-web-client/.jelixlocales.ini
```
9. commit the new branch, commit into lizmap, it's done.
