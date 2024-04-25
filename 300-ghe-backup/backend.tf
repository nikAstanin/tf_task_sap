terraform {
  backend "s3" {
    bucket = "test-key-rotation-state-bucket-gh"
    key    = "state/300-ghe-backup/terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "my-lock-table"
  }
}
