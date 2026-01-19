# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::terraform::cli::validate()
#
#>
######################################################################
p6df::modules::terraform::cli::validate() {

    p6df::modules::terraform::cmd validate
}

######################################################################
#<
#
# Function: p6df::modules::terraform::cli::plan()
#
#>
######################################################################
p6df::modules::terraform::cli::plan() {

    p6df::modules::terraform::cmd plan -lock=false
}

######################################################################
#<
#
# Function: p6df::modules::terraform::cli::apply()
#
#>
######################################################################
p6df::modules::terraform::cli::apply() {

    p6df::modules::terraform::cmd apply
}

######################################################################
#<
#
# Function: p6df::modules::terraform::cli::console()
#
#>
######################################################################
p6df::modules::terraform::cli::console() {

    p6df::modules::terraform::cmd console
}

######################################################################
#<
#
# Function: p6df::modules::terraform::cli::destroy()
#
#>
######################################################################
p6df::modules::terraform::cli::destroy() {

    p6df::modules::terraform::cmd destroy
}

######################################################################
#<
#
# Function: str ws = p6df::modules::terraform::cli::workspace::show()
#
#  Returns:
#	str - ws
#
#>
######################################################################
p6df::modules::terraform::cli::workspace::show() {

  local ws=$(tofu workspace show)

  p6_return_str "$ws"
}

######################################################################
#<
#
# Function: str workspace = p6df::modules::terraform::cli::workspace::select(workspace)
#
#  Args:
#	workspace -
#
#  Returns:
#	str - workspace
#
#>
######################################################################
p6df::modules::terraform::cli::workspace::select() {
  local workspace="$1"

  p6df::modules::terraform::cmd workspace select "$workspace"

  p6_return_str="$workspace"
}

######################################################################
#<
#
# Function: p6df::modules::terraform::cli::state::list()
#
#>
######################################################################
p6df::modules::terraform::cli::state::list() {


    p6df::modules::terraform::cmd state list
}
