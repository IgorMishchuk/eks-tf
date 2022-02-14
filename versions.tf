terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 2.2"
    }
  }

  backend "s3" {
    bucket         = "eks-tf-igormishchuk"
    key            = "eks-tf.tfstate"
    region         = "eu-west-3"
    encrypt        = true
    dynamodb_table = "tf-state-lock"
  }
}