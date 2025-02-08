terraform {
  required_version = ">= 1.10.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-aman-tf-bucket-1"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
