provider "aws" {
  region = "us-east-1"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "my-feedback-app-static"
}

module "dynamodb" {
  source     = "./modules/dynamodb"
  table_name = "feedback-data"
  hash_key   = "id"
}

module "lambda" {
  source         = "./modules/lambda"
  function_name  = "feedback-handler"
  runtime        = "nodejs18.x"
  handler        = "index.handler"
  source_path    = "${path.root}/lambda/lambda.zip"
  dynamodb_table = module.dynamodb.table_name
}
