# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::terraform::deps()
#
#>
######################################################################
p6df::modules::terraform::deps() {
    ModuleDeps=(
        p6m7g8-dotfiles/p6df-go
        ohmyzsh/ohmyzsh:plugins/terraform
    )
}

######################################################################
#<
#
# Function: p6df::modules::terraform::vscodes()
#
#>
######################################################################
p6df::modules::terraform::vscodes() {

    code --install-extension hashicorp.terraform

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::terraform::home::symlink()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::terraform::home::symlink() {

    p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-terraform/share/.terraform.d" ".terraform.d"

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::terraform::external::brew()
#
#>
######################################################################
p6df::modules::terraform::external::brew() {

    p6df::modules::homebrew::cli::brew::install opentofu
#    p6df::modules::homebrew::cli::brew::install hashicorp/tap/terraform

    p6df::modules::homebrew::cli::brew::install terraform-inventory
    p6df::modules::homebrew::cli::brew::install terraform-docs
    p6df::modules::homebrew::cli::brew::install terraform_landscape
    p6df::modules::homebrew::cli::brew::install terraformer
    p6df::modules::homebrew::cli::brew::install terraform-ls
    p6df::modules::homebrew::cli::brew::install iam-policy-json-to-terraform


    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::terraform::aliases::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::terraform::aliases::init() {
    local _module="$1"
    local dir="$2"

    p6_alias "tf" "p6df::modules::terraform::cmd"
    p6_alias "tfa" "p6df::modules::terraform::cli::apply"
    p6_alias "tfc" "p6df::modules::terraform::cli::console"
    p6_alias "tfd" "p6df::modules::terraform::cli::destroy"
    p6_alias "tfp" "p6df::modules::terraform::cli::plan"
    p6_alias "tfsl" "p6df::modules::terraform::cli::state::list"
    p6_alias "tfv" "p6df::modules::terraform::cli::validate"
    p6_alias "tfwS" "p6df::modules::terraform::cli::workspace::select"
    p6_alias "tfws" "p6df::modules::tteraform::cli::workspace::show"

    p6_alias "tg" "terragrunt"

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::terraform::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::terraform::init() {
  local _module="$1"
  local dir="$2"

  p6_bootstrap "$dir"

  p6_return_void
}

######################################################################
#<
#
# Function: str str = p6df::modules::terraform::prompt::line()
#
#  Returns:
#	str - str
#
#>
######################################################################
p6df::modules::terraform::prompt::line() {

    local str
    if p6_dir_exists ".terraform"; then
      local ver=$(p6_terraform_version)
      local workspace=$(p6df::modules::terraform::cli::workspace::show)
      local tfvar_file=$(p6df::modules::terraform::util::tfvar::file)
      str="tf:\t\t  $ver $workspace | $tfvar_file"
    fi

    p6_return_str "$str"
}

######################################################################
#<
#
# Function: str ver = p6_terraform_version()
#
#  Returns:
#	str - ver
#
#>
######################################################################
p6_terraform_version() {

  local ver=$(terraform --version | head -n 1 | cut -d ' ' -f 2)

  p6_return_str "$ver"
}

