resource "aws_subnet" "PublicSubnet1" {
  vpc_id     = aws_vpc.MyVPC.id
  cidr_block = "10.10.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "PublicSubnet1"
  }
}
