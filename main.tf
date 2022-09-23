module "trip-dynamodb" {
  source      = "./dynamodb/trip"
}
module "organization-dynamodb" {
  source      = "./dynamodb/organization"
}
variable "environment" {
  type    = string
  default = "sharebus"
}