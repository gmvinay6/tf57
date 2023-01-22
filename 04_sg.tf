resource "aws_security_group" "demo_sg" {
  name        = "tf-vpc-sg"
  description = "Allow specific traffic for the application"
  vpc_id      = aws_vpc.demo_vpc.id
  ingress {
    description = "ssh port"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["1.2.3.4/32"]
  }
  ingress {
    description = "http port"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "rdp port"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["1.2.3.4/32"]
  }
  tags = {
    Name = "tf-vpc-sg"
  }
}