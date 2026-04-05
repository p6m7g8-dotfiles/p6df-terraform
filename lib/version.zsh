# shellcheck shell=bash
######################################################################
#<
#
# Function: str ver = p6_terraform_version()
#
#  Returns:
#	str - ver
#
#  Environment:	 TERRAFORM_BINARY_NAME
#>
######################################################################
p6_terraform_version() {

  local ver
  if p6_string_eq "tofu" "$TERRAFORM_BINARY_NAME"; then
    ver=$(tofu --version | p6_filter_row_first 1 | p6_filter_column_pluck 2)
  else
    ver=$(terraform --version | p6_filter_row_first 1 | p6_filter_column_pluck 2)
  fi

  p6_return_str "$ver"
}
