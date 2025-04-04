module "ecr-repo" {
  source           = "./modules/ecr"
  ecr_name         = var.ecr_name
  tags             = var.tags
  image_mutability = var.image_mutability
}

/** module "app_runner" {
    source                = "./modules/app-runner"
    service_name          = "nginx-webapp"
    ecr_repository_url    = "891377361231.dkr.ecr.eu-west-2.amazonaws.com/prod/web-app"
    image_tag             = "v1"
    connection_arn        = "arn:aws:ecr:eu-west-2:891377361231:repository/prod/web-app"
    ecr_repository_name   = "prod/web-app"
    account_id            = "891377361231"
    
    
}
**/