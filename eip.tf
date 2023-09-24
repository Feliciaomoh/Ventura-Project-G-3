resource "aws_eip" "lb" {
  instance   = aws_instance.web.id
  domain     = "vpc"
  depends_on = [aws_internet_gateway.gw]
}