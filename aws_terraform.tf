# VPC
resource "aws_vpc" "Ecomm" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
     Name = "ecomm-vpc"                       
  }                          
}
# public subnet
resource "aws_subnet" "ecomm-pub-sn" {
  vpc_id         = aws_vpc.ecomm.id
  cidr_block     = "10.0.1.0/24"
  availability_zone   = "ap-south-1a"

  tags = {
    Name = "ecomm-public-subnet"
  }
}
