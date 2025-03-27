# provider.tf
provider "aws" {
  alias  = "dev"
  region = "us-east-1"
  access_key = var.dev_access_key
  secret_key = var.dev_secret_key
}

provider "aws" {
  alias  = "prod"
  region = "us-east-1"
  access_key = var.prod_access_key
  secret_key = var.prod_secret_key
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  alias = "dev"
}

