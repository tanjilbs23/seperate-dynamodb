module "appsync" {
  source = "terraform-aws-modules/appsync/aws"

  name = "dev-appsync-separate-dynamodb"

#   schema = file("schema.graphql")

  api_keys = {
    default = null # such key will expire in 7 days
  }

#   additional_authentication_provider = {
#     iam = {
#       authentication_type = "AWS_IAM"
#     }

#     openid_connect_1 = {
#       authentication_type = "OPENID_CONNECT"

#       openid_connect_config = {
#         issuer    = "https://www.issuer1.com/"
#         client_id = "client_id1"
#       }
#     }
#   }

#   datasources = {
#     registry_terraform_io = {
#       type     = "HTTP"
#       endpoint = "https://registry.terraform.io"
#     }

#     lambda_create_zip = {
#       type         = "AWS_LAMBDA"
#       function_arn = "arn:aws:lambda:eu-west-1:135367859850:function:index_1"
#     }

#     dynamodb1 = {
#       type       = "AMAZON_DYNAMODB"
#       table_name = "my-table"
#       region     = "eu-west-1"
#     }

#     elasticsearch1 = {
#       type     = "AMAZON_ELASTICSEARCH"
#       endpoint = "https://search-my-domain.eu-west-1.es.amazonaws.com"
#       region   = "eu-west-1"
#     }
#   }

#   resolvers = {
#     "Query.getZip" = {
#       data_source   = "lambda_create_zip"
#       direct_lambda = true
#     }

#     "Query.getModuleFromRegistry" = {
#       data_source       = "registry_terraform_io"
#       request_template  = file("vtl-templates/request.Query.getModuleFromRegistry.vtl")
#       response_template = file("vtl-templates/response.Query.getModuleFromRegistry.vtl")
#     }
#   }
}