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
api_hostname = https://api.transifex.com
hostname = https://www.transifex.com
rest_hostname = https://rest.api.transifex.com
username = EMAIL
password = PASSWORD/TOKEN
token         = PASSWORD/TOKEN
```

In the password parameter, you should set an API Key [you have to generate from your
Transifex account](https://www.transifex.com/user/settings/api/).

### Managing locales of Lizmap Web Client

See [web-client/README.md](web-client/README.md).

### Adding a new language

The language should be created into Transifex. When there are enough translated
strings, you can download translated files with the script. See README.md in plugin or web-client.

A new language code for web-client should be added into `web-client/module_list.sh` and `.tx/config`.

### Releasing a new version 

When a new major version of lizmap has been released, be sure the locales are
updated into the master branch.

- create a new branch `lizmap_X_Y` (replace X and Y).
- push the new branch and the master branch
