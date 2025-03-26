terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "dev/terraform.tfstate"  # Unique key for dev
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
module "ec2_dev" {
  source        = "../../modules/ec2"
  ami_id        = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID for us-east-1
  instance_type = "t2.micro"
  environment   = "dev"
  providers = {
    aws = aws.dev
  }
}
