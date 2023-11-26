resource "aws_instance" "terra-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "terra-key"
  vpc_security_group_ids = ["sg-0a8d5c1fb1eb2ef3c"]
  tags = {
    Name    = "Terra-Instance"
    Project = "Terra"
  }
}