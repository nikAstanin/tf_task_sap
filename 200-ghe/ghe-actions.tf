data "aws_iam_user" "ghe-actions-user" {
  user_name = "test-ghe-actions-user"
}

resource "aws_iam_access_key" "gh_actions_user_key" {
  user = aws_iam_user.ghe-actions-user.name

  lifecycle {
    create_before_destroy = true
  }
}
