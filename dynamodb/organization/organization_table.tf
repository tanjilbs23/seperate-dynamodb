module "dynamodb-table" {
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