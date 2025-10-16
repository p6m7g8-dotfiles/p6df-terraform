# P6's POSIX.2: p6df-terraform

## Table of Contents

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)
[![Mergify](https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges//p6df-terraform/&style=flat)](https://mergify.io)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](<https://gitpod.io/#https://github.com//p6df-terraform>)

## Summary

## Contributing

- [How to Contribute](<https://github.com//.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com//.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

- tf IS p6df::modules::terraform::cmd
- tfa IS p6df::modules::terraform::cli::apply
- tfc IS p6df::modules::terraform::cli::console
- tfd IS p6df::modules::terraform::cli::destroy
- tfp IS p6df::modules::terraform::cli::plan
- tfsl IS p6df::modules::terraform::cli::state::list
- tfv IS p6df::modules::terraform::cli::validate
- tfwS IS p6df::modules::terraform::cli::workspace::select
- tfws IS p6df::modules::tteraform::cli::workspace::show
- tg IS terragrunt
### Functions

## p6df-terraform

### p6df-terraform/init.zsh

- p6df::modules::terraform::aliases::init(_module, dir)
- p6df::modules::terraform::deps()
- p6df::modules::terraform::external::brew()
- p6df::modules::terraform::home::symlink()
- p6df::modules::terraform::init(_module, dir)
- p6df::modules::terraform::vscodes()
- str str = p6df::modules::terraform::prompt::line()
- str ver = p6_terraform_version()

## p6df-terraform/lib

### p6df-terraform/lib/cli.sh

- p6df::modules::terraform::cli::apply()
- p6df::modules::terraform::cli::console()
- p6df::modules::terraform::cli::destroy()
- p6df::modules::terraform::cli::plan()
- p6df::modules::terraform::cli::state::list()
- p6df::modules::terraform::cli::validate()
- str workspace = p6df::modules::terraform::cli::workspace::select(workspace)
- str ws = p6df::modules::terraform::cli::workspace::show()

### p6df-terraform/lib/cmd.sh

- p6df::modules::terraform::cmd(...)

### p6df-terraform/lib/util.sh

- path tfvar_file_path = p6df::modules::terraform::util::tfvar::file()

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

Philip M . Gollucci <pgollucci@p6m7g8.com>
