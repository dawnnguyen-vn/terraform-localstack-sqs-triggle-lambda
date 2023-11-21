data "archive_file" "example_lambda" {
  type        = "zip"
  source_file = "./src/example_lambda.mjs"
  output_path = "./src/example_lambda.mjs.zip"
}

resource "aws_lambda_function" "example_lambda" {
  function_name = "example_lambda"
  handler       = "example_lambda.handler"
  role          = aws_iam_role.example_lambda.arn
  runtime       = "nodejs18.x"

  filename         = data.archive_file.example_lambda.output_path
  source_code_hash = data.archive_file.example_lambda.output_base64sha256

  timeout     = 30
  memory_size = 128
}
