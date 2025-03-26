# environments/prod/main.tf
module "ec2_prod" {
  source        = "../../modules/ec2"
  ami_id        = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID for us-east-1
  instance_type = "t2.micro"
  environment   = "prod"
  providers = {
    aws = aws.prod
  }
}
