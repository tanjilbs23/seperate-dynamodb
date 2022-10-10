module "dynamodb_table" {
  source  = "terraform-aws-modules/dynamodb-table/aws"

  name     = "organization_table"
  hash_key = "id"

  attributes = [
    {
      name = "id"
      type = "S"
    }
  ]


  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

# Iam Role


resource "aws_iam_role" "example" {
  name = "example"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "appsync.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "example" {
  name = "example"
  role = aws_iam_role.example.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "${module.dynamodb_table.dynamodb_table_arn}"
      ]
    }
  ]
}
EOF
}

# 

resource "aws_appsync_datasource" "example" {
  api_id           = "a53izjzw3bhidmnnaoqqqjwn54"
  name             = "test"
  service_role_arn = aws_iam_role.example.arn
  type             = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = module.dynamodb_table.dynamodb_table_id
  }
}