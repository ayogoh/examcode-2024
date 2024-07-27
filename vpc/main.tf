# Create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr

  tags = merge(var.tags, {
    Name = "my_vpc"
  })
}

# Create Internet Gateway
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = merge(var.tags, {
    Name = "my_igw"
  })
}

# Create Subnet 1
resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet1_cidr
  availability_zone = "${var.region}a"

  tags = merge(var.tags, {
    Name = "subnet1"
  })
}

# Create Subnet 2
resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet2_cidr
  availability_zone = "${var.region}b"

  tags = merge(var.tags, {
    Name = "subnet2"
  })
}

# Create Route Table for Subnet 1
resource "aws_route_table" "route_table1" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = merge(var.tags, {
    Name = "route_table1"
  })
}

# Associate Route Table 1 with Subnet 1
resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.route_table1.id
}

# Create Route Table for Subnet 2
resource "aws_route_table" "route_table2" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = merge(var.tags, {
    Name = "route_table2"
  })
}

# Associate Route Table 2 with Subnet 2
resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.route_table2.id
}
