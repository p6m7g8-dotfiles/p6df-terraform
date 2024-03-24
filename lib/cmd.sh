# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::terraform::cmd(...)
#
#  Args:
#	... - 
#
#>
######################################################################
p6df::modules::terraform::cmd() {
    shift 0

    local var_file=$(p6df::modules::terraform::util::tfvar::file)

#    terraform "$@" -var-file=$var_file
     tofu "$@" -var-file=$var_file
}
