resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"  # On-demand pricing

  hash_key     = var.hash_key

  attribute {
    name = var.hash_key
    type = "S"  # S = String
  }

  tags = {
    Environment = "dev"
    Name        = var.table_name
  }
}

