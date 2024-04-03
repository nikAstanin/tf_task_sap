resource "aws_iam_user" "ghe_actions_user" {
  name = "${var.branch}-ghe-actions-user"
}

resource "aws_iam_access_key" "gh_actions_user_key" {
  user = aws_iam_user.ghe-actions-user.name

  lifecycle {
    create_before_destroy = true
  }
}
