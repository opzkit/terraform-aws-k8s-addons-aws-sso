output "iam_role_mappings" {
  value = {
    (local.admin) : "system:masters"
    (local.read_only) : "read-only"
  }
}

output "addon" {
  value = {
    name : "rbac-sso"
    version : "0.0.1"
    content : file("${path.module}/rbac.yaml")
  }
}
