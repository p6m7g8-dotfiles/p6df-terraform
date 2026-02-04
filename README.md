# P6's POSIX.2: p6df-terraform

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Aliases](#aliases)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

- `tfsl` -> `p6df::modules::terraform::cli::state::list`
- `tfws` -> `p6df::modules::terraform::cli::workspace::show`
- `tfwS` -> `p6df::modules::terraform::cli::workspace::select`

### Functions

#### p6df-terraform

##### p6df-terraform/init.zsh

- `p6df::modules::terraform::aliases::init(_module, dir)`
  - Args:
    - _module - 
    - dir - 
- `p6df::modules::terraform::deps()`
- `p6df::modules::terraform::external::brew()`
- `p6df::modules::terraform::home::symlink()`
- `p6df::modules::terraform::init(_module, dir)`
  - Args:
    - _module - 
    - dir - 
- `p6df::modules::terraform::vscodes()`
- `p6df::modules::terraform::vscodes::config()`
- `str str = p6df::modules::terraform::prompt::mod()`
- `str ver = p6_terraform_version()`

#### p6df-terraform/lib

##### p6df-terraform/lib/cli.sh

- `p6df::modules::terraform::cli::apply()`
- `p6df::modules::terraform::cli::console()`
- `p6df::modules::terraform::cli::destroy()`
- `p6df::modules::terraform::cli::plan()`
- `p6df::modules::terraform::cli::state::list()`
- `p6df::modules::terraform::cli::validate()`
- `str workspace = p6df::modules::terraform::cli::workspace::select(workspace)`
  - Args:
    - workspace - 
- `str ws = p6df::modules::terraform::cli::workspace::show()`

##### p6df-terraform/lib/cmd.sh

- `p6df::modules::terraform::cmd(...)`
  - Args:
    - ... - 

##### p6df-terraform/lib/util.sh

- `path tfvar_file_path = p6df::modules::terraform::util::tfvar::file()`

## Hierarchy

```text
.
├── init.zsh
├── lib
│   ├── cli.sh
│   ├── cmd.sh
│   └── util.sh
├── README.md
└── share

3 directories, 5 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
