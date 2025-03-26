# modules/ec2/main.tf
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "${var.environment}-ec2"
  }
}

# modules/ec2/variables.tf
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "environment" {
  description = "Environment name (dev or prod)"
  type        = string
}
