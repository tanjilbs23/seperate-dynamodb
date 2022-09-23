module "trip-dynamodb" {
  source = "./dynamodb/trip"
#   environment = "dev"
}
module "organization-dynamodb" {
  source = "./dynamodb/organization"
#   environment = "dev"
}