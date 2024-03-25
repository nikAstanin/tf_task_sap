terraform {
  backend "s3" {
    bucket = "test-key-rotation-state-bucket-gh"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "my-lock-table"
  }
}
