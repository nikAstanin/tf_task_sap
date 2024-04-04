variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-east-1"
}

variable "test_key_user" {
  description = "The name of the AWS IAM user to create."
  type        = string
  default     = "test-key-user"
}

variable "branch" {
  type = string
}
