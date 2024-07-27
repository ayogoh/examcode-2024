# Create SNS Topic
resource "aws_sns_topic" "deprotech2024" {
  name = "my_sns_dev"

  tags = {
    Name = "my_sns_dev"
  }
}

# Optional: Create an SNS Topic Subscription (Email example)
resource "aws_sns_topic_subscription" "my_topic_subscription" {
  topic_arn = aws_sns_topic.my_topic.arn
  protocol  = "email"
  endpoint  = "wimaxbuea@gmail.com"
}

# Optional: Create an SNS Topic Subscription (Lambda example)
resource "aws_lambda_function" "example" {
  filename      = "lambda_function_payload.zip"
  function_name = "example_lambda_function"
  role          = aws_iam_role.lambda_exec.arn
  handler       = "exports.handler"

  source_code_hash = filebase64sha256("lambda_function_payload.zip")

  environment {
    variables = {
      foo = "bar"
    }
  }

  tags = {
    Name = "example_lambda_function"
  }
}

resource "aws_lambda_permission" "allow_sns" {
  statement_id  = "AllowExecutionFromSNS"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.example.function_name
  principal     = "sns.amazonaws.com"
  source_arn    = aws_sns_topic.my_topic.arn
}

resource "aws_sns_topic_subscription" "lambda_subscription" {
  topic_arn = aws_sns_topic.my_dev.arn
  protocol  = "lambda"
  endpoint  = aws_lambda_function.example.arn
}
