module "trip-dynamodb" {
  source      = "./dynamodb/trip"
  environment = var.environment
}
module "organization-dynamodb" {
  source      = "./dynamodb/organization"
  environment = var.environment
}
variable "environment" {
  type    = string
  default = "sharebus"
}