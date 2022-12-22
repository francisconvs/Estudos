resource "aws_vpc" "vpc_desafio_04" {
  cidr_block = "172.31.0.0/16"
}

resource "aws_subnet" "subnet_desafio_04" {
  vpc_id     = aws_vpc.vpc_desafio_04.id
  cidr_block = "172.31.32.0/20"

  tags = {
    Name = "desafio-04"
  }
}