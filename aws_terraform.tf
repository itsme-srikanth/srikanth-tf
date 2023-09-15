# VPC
resource "aws_vpc" "Ecomm" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
     Name = "ecomm_vpc"                       
  }                          
}
resource "aws_subnet" "ecomm_pub_sn" {
  vpc_id = aws_vpc.ecomm.id
  cidr_block = 10.0.1.0/24
  availability_zone = "ap-south-1a"
  map_public_ip_enable = "true"
  tags = {
    Name = "ecomm_public_subnet"
  }
}
