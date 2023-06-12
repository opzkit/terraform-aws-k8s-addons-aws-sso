data "aws_iam_roles" "admin" {
  name_regex  = var.admin_role_regex
  path_prefix = "/aws-reserved/sso.amazonaws.com/"
}

data "aws_iam_roles" "read_only" {
  name_regex  = var.view_role_regex
  path_prefix = "/aws-reserved/sso.amazonaws.com/"
}

data "aws_caller_identity" "current" {}

locals {
  admin     = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${tolist(data.aws_iam_roles.admin.names)[0]}"
  read_only = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${tolist(data.aws_iam_roles.read_only.names)[0]}"
}
