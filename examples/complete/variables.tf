variable "name" {
  type        = string
  description = "Username. Alphanumeric characters, or any of the following: +,-.=@_"
  default     = null
}

variable "policy" {
  type        = string
  description = "IAM policy for the user. The default is AdministratorAccess"
  default     = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Resource": "*",
      "Action": "*",
      "Effect": "Allow"
    }
  ]
}
EOF
}

variable "policy_name" {
  type        = string
  description = "Name for the user's access policy. Alphanumeric and +,-.=@_"
  default     = "AdministratorAccess"
}
