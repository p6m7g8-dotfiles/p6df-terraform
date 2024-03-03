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

    # terrafrom
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

    brew install hashicorp/tap/terraform

    brew install terraform-inventory
    brew install terraform-docs
    brew install terraform_landscape
    brew install terraformer
    brew install terraform-ls
    brew install iam-policy-json-to-terraform

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::terraform::aliases::init()
#
#>
######################################################################
p6df::modules::terraform::aliases::init() {

    alias tf='terraform'
    alias tfw='terraform workspace'
    alias tg=terragrunt

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

    if p6_dir_exists ".terraform"; then
        local str
        str="tf:\t  $(p6_terraform_workspace_show)#$(p6_terraform_workspace_tfvar_file)"
        p6_return_str "$str"
    else
        p6_return_void
    fi
}

######################################################################
#<
#
# Function: p6_terraform_workspace_show()
#
#>
######################################################################
p6_terraform_workspace_show() {

    terraform workspace show

    p6_return_void
}

######################################################################
#<
#
# Function: path ./tfvars/${ws}.tfvars = p6_terraform_workspace_tfvar_file()
#
#  Returns:
#	path - ./tfvars/${ws}.tfvars
#
#>
######################################################################
p6_terraform_workspace_tfvar_file() {

    local ws=$(terraform workspace show)

    p6_return_path "./tfvars/${ws}.tfvars"
}

######################################################################
#<
#
# Function: p6_terraform_validate()
#
#>
######################################################################
p6_terraform_validate() {

    terraform validate -var-file=$(p6_terraform_workspace_tfvar_file)
}

######################################################################
#<
#
# Function: p6_terraform_plan()
#
#>
######################################################################
p6_terraform_plan() {

    terraform plan -var-file=$(p6_terraform_workspace_tfvar_file)
}

######################################################################
#<
#
# Function: p6_terraform_apply()
#
#>
######################################################################
p6_terraform_apply() {

    terraform apply -var-file=$(p6_terraform_workspace_tfvar_file)
}

######################################################################
#<
#
# Function: p6_terraform_console()
#
#>
######################################################################
p6_terraform_console() {

    terraform console -var-file=$(p6_terraform_workspace_tfvar_file)

    p6_return_void
}

######################################################################
#<
#
# Function: p6_terraform_destroy()
#
#>
######################################################################
p6_terraform_destroy() {

    terraform destroy -var-file=$(p6_terraform_workspace_tfvar_file)
}
