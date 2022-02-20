# Crate a AWS VPC which contains the following
#   - VPC
#   - Public subnet

resource "aws_vpc" "samvpc" {
  cidr_block           = "10.0.0.0/16"

  tags = {
    Name = "samvpc-vpc"
  }
}

resource "aws_subnet" "samvpc_public_subnet" {
  count = var.number_of_public_subnets
  cidr_block              = "10.0.0.0/24"
  vpc_id                  = aws_vpc.samvpc.id
  map_public_ip_on_launch = true 

  tags = {
    Name = "samvpc-public-subnet"
  }
}
