provider "aws" {
    region = "us-east-1"
    access_key = "localstack"
    secret_key = "localstack"
    skip_credentials_validation = true
    skip_metadata_api_check = true
    skip_requesting_account_id = true

    endpoints {
        dynamodb = "http://localhost:4566"
    }
}

// DYNAMODB TABLES
resource "aws_dynamodb_table" "dogs" {
  name           = "dogs"
  read_capacity  = "20"
  write_capacity = "20"
  hash_key       = "ID"

  attribute {
    name = "ID"
    type = "S"
  }
}