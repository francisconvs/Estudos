resource "aws_network_interface" "network_interface_desafio_04" {
  subnet_id   = aws_subnet.subnet_desafio_04.id
  private_ips = ["172.31.32.10"]

  tags = {
    Name = "desafio-04"
  }
}

resource "aws_instance" "instance_desafio_04" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t3.nano"

  network_interface {
    network_interface_id = aws_network_interface.network_interface_desafio_04.id
    device_index         = 0
  }
}