resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = { Name = "clouddevops-vpc" }
}

resource "aws_subnet" "public" {
  count = length(var.public_subnets)
  vpc_id = aws_vpc.main.id
  cidr_block = element(var.public_subnets, count.index)
  map_public_ip_on_launch = true
  tags = { Name = "public-${count.index}" }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = { Name = "main-igw" }
}
