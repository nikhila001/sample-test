resource "aws_lambda_function" "example" {
  function_name = "SampleLambdaFunction"
  handler = "index.handler"
  runtime = "nodejs14.x"
  role = aws_iam_role.lambda_execution_role.arn
  s3_bucket = "sampletestawsbucket1"
  s3_key = "C:/Users/User/Desktop/Terraform/lambda.zip"
}

resource "aws_iam_role" "lambda_execution_role" {
  name = "SampleLambdaExecutionRole"
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

