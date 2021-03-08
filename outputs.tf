output "user_credentials" {
  value = "${aws_iam_access_key.main.id} ${aws_iam_access_key.main.secret}"
}
