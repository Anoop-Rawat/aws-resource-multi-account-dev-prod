terraform {
  backend "s3" {
    bucket         = "anoop.cse3-terraform-state-bucket"
    key            = "terraform.tfstate"  # Unique key for dev
    region         = "us-east-1"
    
  }
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


module "ec2_dev" {
  source        = "../../modules/ec2"
  ami_id        = "ami-08b5b3a93ed654d19"  # Replace with a valid AMI ID for us-east-1
  instance_type = "t2.micro"
  environment   = "dev"
  providers = {
    aws = aws.dev
  }
}
