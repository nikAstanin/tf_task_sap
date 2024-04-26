resource "aws_iam_user" "ghe_backup_user" {
  name = "${var.branch}-ghe-backup-user"
}

resource "aws_iam_access_key" "gh_backup_user_key" {
  user = aws_iam_user.ghe_backup_user.name

  lifecycle {
    create_before_destroy = true
  }
}
