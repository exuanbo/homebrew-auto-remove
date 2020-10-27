# brew autoremove

This is an [external command](https://github.com/mxcl/homebrew/wiki/External-Commands) for Homebrew that will remove packages and all of their dependencies recursively.

It only removes packages that are not depended on by other unrelated packages.

## Usage

```sh
brew tap exuanbo/autoremove
brew autoremove pkg_1 pkg_2
```

## License

[MIT License](https://github.com/exuanbo/homebrew-autoremove/blob/master/LICENSE) © 2020 [Exuanbo](https://github.com/exuanbo)
