output "user_arn" {
  value       = aws_iam_user.test_user.arn
  description = "The ARN of the created IAM user."
}

/* output "secret_access_key" {
  value       = aws_iam_access_key.user_key.secret
  description = "The secret access key"
  sensitive   = true
} */
