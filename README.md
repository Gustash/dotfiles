# Gustash's dotfiles

These are my Linux dotfiles for various tools and packages.

Feel free to use these as inspiration, or simply copy them verbatim. The world is our oyster.

## Dotter

This repo uses [Dotter](https://github.com/SuperCuber/dotter) to manage deployments. You should read their documentation on how to use it.

But, to summarize, you should create a `.dotter/local.toml` file and add the following:

```toml
includes = ["WHATEVER_PACKAGES_FROM_GLOBAL_TOML_TO_INCLUDE"]
```

Then, you can simply run `dotter` from inside the root folder of this repo.

## License

This repository is licensed under the GNU General Public License v3.0.
