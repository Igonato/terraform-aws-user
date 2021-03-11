provider "aws" {
  region = "us-east-1" # Doesn't matter for IAM but is required by the provider
}


module "user" {
  source      = "../../"
  name        = var.name
  policy      = var.policy
  policy_name = var.policy_name
}

output "user_credentials" {
  value = <<EOF
aws_access_key_id = ${module.user.access_key_id}
aws_secret_access_key = ${module.user.access_key_secret}
EOF
}
