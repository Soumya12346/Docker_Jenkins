provider "aws" {
  region = var.aws_region
}

# Create EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-0ba259e664698cbfc"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }

  provisioner "local-exec" {
    command = "chmod +x dockerinstall.sh && ./dockerinstall.sh"
  }
}
