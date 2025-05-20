resource "aws_subnet" "PublicSubnet2" {
  vpc_id     = aws_vpc.MyVPC.id
  cidr_block = "10.10.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "PublicSubnet2"
  }
}
