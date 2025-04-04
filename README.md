This is a simple nginx app, building the image with docker, and pushing to ECR.
We are going to be building the docker image using github actions to automate the process. After this we make use of terraform to build aws apprunner service to pull the ECR image and deploy the simple Webapp.
