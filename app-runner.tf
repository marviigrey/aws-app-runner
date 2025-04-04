resource "aws_apprunner_service" "nginx-webapp" {
  service_name = var.service_name

  source_configuration {
    authentication_configuration {
        access_role_arn = "${aws_iam_role.myroles.arn}"
    }
    image_repository {
      image_configuration {
        port = "80"
      }
      image_identifier      = var.image_URL
      image_repository_type = "ECR"
    }

  }
}

