# environments/prod/main.tf
terraform {
  backend "s3" {
    bucket         = "rishika-terraform-state-bucket"
    key            = "terraform.tfstate"  # Unique key for prod
    region         = "us-east-1"
    
  }
}

module "ec2_prod" {
  source        = "../../modules/ec2"
  ami_id        = "ami-08b5b3a93ed654d19"  # Replace with valid AMI
  instance_type = "t2.micro"
  environment   = "prod"
  providers = {
    aws = aws.prod
  }
}
