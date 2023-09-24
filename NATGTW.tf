resource "aws_nat_gateway" "example-1a" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.Ventura-Prod-NAT-ALB-Subnet-1.id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}

resource "aws_nat_gateway" "example-1b" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.Ventura-Prod-ALB-Subnet-2.id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}