resource "aws_subnet" "Ventura-Prod-NAT-ALB-Subnet-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr[0]
  availability_zone = var.availability_zones[0]
  tags              = { name = "Ventura-Prod-NAT-ALB-Subnet-1" }
}

resource "aws_subnet" "Ventura-Prod-ALB-Subnet-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr[1]
  availability_zone = var.availability_zones[1]
  tags              = { Name = "Ventura-Prod-ALB-Subnet-2" }
}

resource "aws_subnet" "Ventura-Prod-Web-Subnet-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[0]
  availability_zone = var.availability_zones[0]
  tags              = { Name = "Ventura-Prod-Web-Subnet-1" }
}

resource "aws_subnet" "Ventura-Prod-Web-Subnet-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[1]
  availability_zone = var.availability_zones[1]
  tags              = { Name = "Ventura-Prod-Web-Subnet-2" }
}

resource "aws_subnet" "Ventura-Prod-App-Subnet-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[2]
  availability_zone = var.availability_zones[0]
  tags              = { Name = "Ventura-Prod-App-Subnet-1" }
}

resource "aws_subnet" "Ventura-Prod-App-Subnet-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[3]
  availability_zone = var.availability_zones[1]
  tags              = { Name = "Ventura-Prod-App-Subnet-2" }
}

resource "aws_subnet" "Ventura-Prod-DB-Subnet-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[4]
  availability_zone = var.availability_zones[0]
  tags              = { Name = "Ventura-Prod-DB-Subnet-1" }
}

resource "aws_subnet" "Ventura-Prod-DB-Subnet-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[5]
  availability_zone = var.availability_zones[1]
  tags              = { Name = "Ventura-Prod-DB-Subnet-2" }
}


