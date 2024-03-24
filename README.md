# p6df-terraform

## Table of Contents


### p6df-terraform
- [p6df-terraform](#p6df-terraform)
  - [Badges](#badges)
  - [Distributions](#distributions)
  - [Summary](#summary)
  - [Contributing](#contributing)
  - [Code of Conduct](#code-of-conduct)
  - [Usage](#usage)
  - [Author](#author)

### Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/p6m7g8/p6df-terraform)
[![Mergify](https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges/p6m7g8/p6df-terraform/&style=flat)](https://mergify.io)
[![codecov](https://codecov.io/gh/p6m7g8/p6df-terraform/branch/master/graph/badge.svg?token=14Yj1fZbew)](https://codecov.io/gh/p6m7g8/p6df-terraform)
[![Known Vulnerabilities](https://snyk.io/test/github/p6m7g8/p6df-terraform/badge.svg?targetFile=package.json)](https://snyk.io/test/github/p6m7g8/p6df-terraform?targetFile=package.json)
[![Gihub repo dependents](https://badgen.net/github/dependents-repo/p6m7g8/p6df-terraform)](https://github.com/p6m7g8/p6df-terraform/network/dependents?dependent_type=REPOSITORY)
[![Gihub package dependents](https://badgen.net/github/dependents-pkg/p6m7g8/p6df-terraform)](https://github.com/p6m7g8/p6df-terraform/network/dependents?dependent_type=PACKAGE)

## Summary

## Contributing

- [How to Contribute](CONTRIBUTING.md)

## Code of Conduct

- [Code of Conduct](https://github.com/p6m7g8/.github/blob/master/CODE_OF_CONDUCT.md)

## Usage


### Aliases

- tf -> p6df::modules::terraform::cmd
- tfa -> p6df::modules::terraform::cli::apply
- tfc -> p6df::modules::terraform::cli::console
- tfd -> p6df::modules::terraform::cli::destroy
- tfp -> p6df::modules::terraform::cli::plan
- tfsl -> p6df::modules::terraform::cli::state::list
- tfv -> p6df::modules::terraform::cli::validate
- tfwS -> p6df::modules::terraform::cli::workspace::select
- tfws -> p6df::modules::tteraform::cli::workspace::show
- tg -> terragrunt

### Functions

### p6df-terraform:

#### p6df-terraform/init.zsh:

- p6df::modules::terraform::aliases::init(_module, dir)
- p6df::modules::terraform::deps()
- p6df::modules::terraform::external::brew()
- p6df::modules::terraform::home::symlink()
- p6df::modules::terraform::init(_module, dir)
- p6df::modules::terraform::vscodes()
- str str = p6df::modules::terraform::prompt::line()
- str ver = p6_terraform_version()


### p6df-terraform/lib:

#### p6df-terraform/lib/cli.sh:

- p6df::modules::terraform::cli::apply()
- p6df::modules::terraform::cli::console()
- p6df::modules::terraform::cli::destroy()
- p6df::modules::terraform::cli::plan()
- p6df::modules::terraform::cli::state::list()
- p6df::modules::terraform::cli::validate()
- str workspace = p6df::modules::terraform::cli::workspace::select(workspace)
- str ws = p6df::modules::terraform::cli::workspace::show()

#### p6df-terraform/lib/cmd.sh:

- p6df::modules::terraform::cmd(...)

#### p6df-terraform/lib/util.sh:

- path tfvar_file_path = p6df::modules::terraform::util::tfvar::file()



## Hier
```text
.
├── cli.sh
├── cmd.sh
└── util.sh

1 directory, 3 files
```
## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>
