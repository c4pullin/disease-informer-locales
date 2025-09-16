# How to contribute

You're gonna need to learn the [Fluent Syntax](https://github.com/projectfluent/fluent#fluent-syntax-ftl).

You can experiment with the syntax [here](https://projectfluent.org/play/)

[uv](https://docs.astral.sh/uv/getting-started/installation/) is needed.

## For an existing locale
* [Fork](https://github.com/c4pullin/disease-informer-locales/fork) the repository
* Edit the locale you wish (We only allow 1 locale per pull request.)
* [Check your work](#check-your-work)
* [Submit](https://github.com/c4pullin/disease-informer-locales/compare) a pull request with the changes made.


## For a new locale
* Make sure it is a locale supported by discord (Listed [here](https://discord.com/developers/docs/reference#locales))
* [Fork](https://github.com/c4pullin/disease-informer-locales/fork) the repository
* Create a folder inside locales with the discord `LOCALE` as its name
* Copy en-US's informer.ftl and place it inside the newly created folder.
* Translate as much as possible
* Add the locale to both of l10n.toml's `locales` list. 
* [Check your work](#check-your-work)
* [Submit](https://github.com/c4pullin/disease-informer-locales/compare) a pull request with the changes made.

### Check your work
```shell
uv run --group localization compare-locales l10n.toml locales
# No errors = All good.
uv run --group localization moz-l10n-lint l10n.toml
# No output in console = All good.
```
