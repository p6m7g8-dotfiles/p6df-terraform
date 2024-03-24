# shellcheck shell=bash
######################################################################
#<
#
# Function: path tfvar_file_path = p6df::modules::terraform::util::tfvar::file()
#
#  Returns:
#	path - tfvar_file_path
#
#>
######################################################################
p6df::modules::terraform::util::tfvar::file() {

    local ws=$(p6df::modules::terraform::cli::workspace::show)

    local tfvar_file_path="workspaces/${ws}.tfvars"

    p6_return_path "$tfvar_file_path"
}
