variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "runtime" {
  description = "Lambda runtime environment"
  type        = string
}

variable "handler" {
  description = "Function entrypoint in your code"
  type        = string
}

variable "source_path" {
  description = "Path to Lambda zip file"
  type        = string
}

variable "dynamodb_table" {
  description = "DynamoDB table name to use in Lambda environment"
  type        = string
}

