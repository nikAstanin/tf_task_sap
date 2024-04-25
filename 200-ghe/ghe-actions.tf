resource "aws_iam_user" "ghe_actions_user" {
  for_each = toset(var.branch)  # where var.branch is a list of branches ['dev', 'stage', 'prod']

  name = "${each.key}-ghe-actions-user"

  lifecycle {
    ignore_changes = all
  }
}

resource "aws_iam_access_key" "gh_actions_user_key" {
  for_each = toset(var.branch)

  user = aws_iam_user.ghe_actions_user[each.key].name

  lifecycle {
    create_before_destroy = true
  }
}
