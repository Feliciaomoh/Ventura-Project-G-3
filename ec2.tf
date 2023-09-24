resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id[0]

  tags = {
    Name = "eip-instance-0"
  }
}

resource "aws_instance" "web-1" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id[1]

  tags = {
    Name = "eip-instance-1"
  }
}