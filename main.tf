resource "aws_iam_user" "test_user" {
  name = var.test_key_user
}

resource "aws_iam_access_key" "user_key" {
  user = aws_iam_user.test_user.name

  lifecycle {
    create_before_destroy = true
  }
}
