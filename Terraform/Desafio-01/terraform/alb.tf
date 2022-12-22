resource "aws_lb" "lb_desafio_04" {
  name               = "desafio-04"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.security_group_desafio_04.id]
  subnets            = [for subnet in aws_subnet.subnet_desafio_04 : subnet.id]

  enable_deletion_protection = true

  access_logs {
    bucket  = aws_s3_bucket.s3_lb_logs_desafio_04.bucket
    prefix  = "lb-desafio-04"
    enabled = true
  }

  tags = {
    Environment = "dev"
  }
}

# Instance Target Group
resource "aws_lb_target_group" "lb_target_group_desafio_04" {
  name     = "lb_target_group_desafio_04"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc_desafio_04.id
}

# # IP Target Group
# resource "aws_lb_target_group" "lb_target_group_desafio_04" {
#   name        = "lb_target_group_desafio_04"
#   port        = 80
#   protocol    = "HTTP"
#   target_type = "ip"
#   vpc_id      = aws_vpc.vpc_desafio_04.id
# }
