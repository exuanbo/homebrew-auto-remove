# brew autoremove

This is a brew command to remove packages and all of their dependencies recursively.

It only removes packages that are not depended on by other unrelated packages.

## Usage

```sh
brew tap exuanbo/autoremove
brew autoremove pkgname_1 pkgname_2
```

## License

[MIT License](https://github.com/exuanbo/homebrew-autoremove/blob/master/LICENSE) © 2020 [Exuanbo](https://github.com/exuanbo)
