# brew auto-remove

This is an [external command](https://github.com/mxcl/homebrew/wiki/External-Commands) for Homebrew that will remove packages and all of their dependencies recursively.

It only removes packages that are not depended on by other unrelated packages.

## Usage

```sh
brew tap exuanbo/auto-remove
brew auto-remove pkg_1 pkg_2
```

## License

[MIT License](https://github.com/exuanbo/homebrew-auto-remove/blob/main/LICENSE) © 2020 [Exuanbo](https://github.com/exuanbo)
