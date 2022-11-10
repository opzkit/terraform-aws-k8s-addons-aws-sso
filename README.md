# terraform-aws-k8s-addons-aws-sso

Maps IAM Identity Center Permission Sets to Kubernetes cluster roles.

## AWS Setup
The following permission sets are used and needs to be created (when using AWS Control Tower these Permission Sets
are created automatically):
* AWSReadOnlyAccess (simplest is to use the predefined managed policy `ViewOnlyAccess`)
* AWSAdministratorAccess (simplest is to use the predefined managed policy `AdministratorAccess`)

and assign them to the AWS Account.
