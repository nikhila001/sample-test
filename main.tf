provider "aws"{
  region = var.AWS_REGION
}

module "ec2" {
  source = "./modules/ec2"
}

module "lambda" {
  source = "./modules/lambda"
}

module "s3" {
  source = "./modules/s3"
}

  
