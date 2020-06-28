provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "test-instance" {
  ami           = "ami-0ea3405d2d2522162"
  instance_type = "t2.micro"
  key_name      = "june_devops"

  tags = {
    Name = "Development Server"
  }
}