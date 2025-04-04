resource "aws_iam_role" "myroles" {
  name = "myroles"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      { "Effect" : "Allow",
        "Principal" : {
          "Service" : "build.apprunner.amazonaws.com"
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "myrolespolicy" {
  role       = aws_iam_role.myroles.id
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSAppRunnerServicePolicyForECRAccess"
}

resource "time_sleep" "waitrolecreate" {
  depends_on      = [aws_iam_role.myroles]
  create_duration = "60s"
}