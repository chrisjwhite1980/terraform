provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-080d1454ad4fabd12"
  instance_type          = "t2.micro"
  availability_zone      = "us-west-1b"
  key_name               = "terra-key"
  vpc_security_group_ids = ["sg-0a8d5c1fb1eb2ef3c"]
  tags = {
    Name    = "Terra-Instance"
    Project = "Terra"
  }
}