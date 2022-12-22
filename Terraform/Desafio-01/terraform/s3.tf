resource "aws_s3_bucket" "s3_lb_logs_desafio_04" {
  bucket = "lb_logs_desafio_04"

  tags = {
    Name        = "desafio-04"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_acl" "acl_s3_lb_logs_desafio_04" {
  bucket = aws_s3_bucket.s3_lb_logs_desafio_04.id
  acl    = "private"
}