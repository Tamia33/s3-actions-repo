module "s3" {
  source = "git@github.com:Tamia33/s3-backend-repo.git//s3-module?ref=v1.0.1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket  = bootcamp32-dev-78
    region  = "us-west-2"
    key     = "action/terraform.tfstate"
    encrypt = true
  }
}

