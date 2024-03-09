provider "aws" {
  region = var.aws_region
}

 # Create EC2 instance
resource "aws_instance" "my_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
 provisioner "local-exec" {
    command = "chmod 777 dockerinstall.sh"
    command = "./dockerinstall.sh"
  }
}
