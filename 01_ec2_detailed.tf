resource "aws_instance" "demo_instance" {
  tags = {
    Name = "linux-webserver1"
    Dept = "projecta"
  }
  ami                    = "ami-0cca134ec43cf708f"
  instance_type          = "t2.micro"
  key_name               = "terraformclass-mumbai-kp"
  subnet_id              = "subnet-05f1ab6a25957a678"
  vpc_security_group_ids = ["sg-079dc53d087d1f5a5"]
}