resource "aws_apprunner_service" "nginx-webapp" {
    service_name = "nginx-webapp"
    source_configuration {
        image_repository {
            image_configuration {
                port = var.port
            }
            image_identifier      = var.image_identifier 
            image_repository_type = var.image_repo_type
        }
    }
}

output apprunner_nginx-webapp {
  value       = aws_apprunner_service.nginx-webapp
}
