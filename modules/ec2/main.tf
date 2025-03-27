# modules/ec2/main.tf
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "${var.environment}-ec2"
  }
}

