/**
 * # Terraform :: Tags
 *
 * This repository includes terraform module for tags in order to make tags standardised for all resources that is being created
 * by terraform.
 *
 */

locals {
  default_tags = {
    "bu" : var.bu
    "division" : var.division
    "department" : var.department
  }

  mandatory_input_tags = ["app_name", "app_group", "environment"]

  merged_tags = merge(local.default_tags, var.tags)

}


resource "null_resource" "check_input_mandatory_tags" {
  for_each = toset(local.mandatory_input_tags)

  lifecycle {
    precondition {
      condition     = can(var.tags[each.key]) == true
      error_message = "Please include ${each.key} to the tags map."
    }
  }
}

resource "null_resource" "check_not_empty_string_mandatory_tags" {
  for_each = toset(local.mandatory_input_tags)

  lifecycle {
    precondition {
      condition     = can(var.tags[each.key]) == true ? var.tags[each.key] != "" : true
      error_message = "The tag ${each.key} cannot be empty string."
    }
  }
}
