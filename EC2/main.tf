resource "aws_instance" "dev2" {
  ami               = var.ami
  instance_type     = var.instance-type
  key_name          = var.key-name
  availability_zone = var.az
  #security_groups = "sg-07ac7265afe515c71"
  user_data = file("postgres.sh")

  tags = {
    Name = "dev2"
    Env  = "dev2-env"
  }
}