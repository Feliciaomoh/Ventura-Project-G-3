variable "cidr_block" {
  description = "vpc-cidr-block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "vpc-tag"
  type        = map(string)
  default = {
    "name" = "prod-vpc"
  }

}

variable "public_subnet_cidr" {
  description = "pubic_subnet_cidr"
  type        = list(string)
  default     = ["10.0.1.0/28", "10.0.3.0/28"]

}

variable "private_subnet_cidr" {
  description = "private_subnet_cidr"
  type        = list(string)
  default     = ["10.0.4.0/23", "10.0.10.0/23", "10.0.14.0/23", "10.0.20.0/23", "10.0.25.0/27", "10.0.30.0/27"]

}

variable "availability_zones" {
  description = "availability_zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ami" {
  description = "ami"
  type        = string
  default     = "ami-002070d43b0a4f171"
}

variable "instance_type" {
  description = "our-ec2"
  type        = string
  default     = "t2.medium"
}

variable "subnet_id" {
  description = "our-subnet"
  type        = list(string)
  default     = ["aws_subnet.Ventura-Prod-NAT-ALB-subnet-1.id", "aws_subnet.Ventura-Prod-ALB-subnet-2.id"]

}