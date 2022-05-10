resource "aws_security_group" "security_group_desafio_04" {
  name        = "security_group_desafio_04"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.subnet_desafio_04.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.subnet_desafio_04.cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}