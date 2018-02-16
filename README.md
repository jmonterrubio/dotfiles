# dotfiles

Organized way to mantain and export the files that customize my system (Ubuntu/Debian)

Using @holman [dotfiles](https://github.com/holman/dotfiles) as reference :smirk:.

## Components (same as @holman's, without brew :smirk:)

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
- **packages**: List of system packages to install
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Prerequisites

Spaceship ZSH needs:

[![NPM version][npm-image]][npm-url]
[![Zsh][zsh-image]][zsh-url]

## Install

Run:

```sh
git clone https://github.com/jmonterrubio/dotfiles.git ~/.dotfiles
cd .dotfiles/
script/bootstrap
```

`dot` is a simple script that installs some dependencies. Tweak this script, and occasionally run dot from time to time to keep your environment fresh and up-to-date. You can find this script in `bin/`.

Use `atom-package-install` to Installs the atom packages listed in your packages.txt file located at ~/.dotfiles/atom.symlink/packages.tx 

## Acknowledgments

* [Zach Holman](https://github.com/holman) - For the original [dotfiles](https://github.com/holman/dotfiles)
* [Robby Russell](https://github.com/robbyrussell) - For [oh my zsh](http://ohmyz.sh/)
* [Denys Dovhan](https://github.com/denysdovhan) - For the [spaceship zsh prompt](https://github.com/denysdovhan/spaceship-prompt)


<!-- Badges -->
[npm-url]: https://npmjs.org/package/spaceship-prompt
[npm-image]: https://img.shields.io/npm/v/spaceship-prompt.svg?style=flat-square
[zsh-url]: http://zsh.org/
[zsh-image]: https://img.shields.io/badge/zsh-%3E%3Dv5.0.6-777777.svg?style=flat-square
