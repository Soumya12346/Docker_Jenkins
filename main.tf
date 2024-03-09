provider "aws" {
  default = "ap-south-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0ba259e664698cbfc"
  instance_type = "t2.micro"

  tags = {
    Name = "doccker_terraform_instance"
  }

  provisioner "local-exec" {
    command = "chmod +x dockerinstall.sh && ./dockerinstall.sh"
  }
}
