resource "random_string" "random" {
  length  = 16
  special = false
}

resource "aws_iam_user" "main" {
  name = var.name == null ? "user-${random_string.random.result}" : var.name

  tags = {
    "Managed by" = "Terraform"
  }
}

resource "aws_iam_user_policy" "main" {
  name   = var.policy_name
  policy = var.policy
  user   = aws_iam_user.main.name
}

resource "aws_iam_access_key" "main" {
  user = aws_iam_user.main.name
}
