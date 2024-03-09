provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0ba259e664698cbfc"
  instance_type = "t2.micro"

  tags = {
    Name = "doccker_terraform_instance"
  }
  
  data "template_file" "web_userdata" {
   template = file("dockerinstall.sh")
}
}
