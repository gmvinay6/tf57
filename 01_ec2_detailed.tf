#this resource deploys public key to aws specified region

resource "aws_key_pair" "demo_ssh_pub_key" {
  key_name   = "tf-ssh-key"
  public_key = file(var.ssh_pub_key)
}

#this resource creates ec2 instance in mumbai region

resource "aws_instance" "demo_instance" {
  tags                   = var.instance_tag
  ami                    = var.ami["amazon"]
  instance_type          = var.instance_type[0]
  key_name               = aws_key_pair.demo_ssh_pub_key.key_name
  subnet_id              = aws_subnet.demo_subnet1.id
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
}

/*
resource "aws_instance" "demo_instance3" {
  tags                   = var.instance_tag
  ami                    = var.ami["rhel"]
  instance_type          = var.instance_type[0]
  key_name               = "terraformclass-mumbai-kp"
  vpc_security_group_ids = var.sgs
}

resource "time_sleep" "wait_a_min" {
  create_duration = "1m"
  depends_on = [
    aws_instance.demo_instance
  ]
}

#this resource creates ec2 instance in singapore region

resource "aws_instance" "demo_instance1" {
  tags = {
    Name = "linux-webserver2"
    Dept = "devops"
  }
  ami           = "ami-005835d578c62050d"
  instance_type = "t2.micro"
  provider      = aws.tf57-singapore
}

#this resource creates ec2 instance in mumbai region in account2

resource "aws_instance" "demo_instance2" {
  tags = {
    Name = "linux-webserver3"
    Dept = "devops"
  }
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"
  provider      = aws.tf57-mumbai-production
}
*/