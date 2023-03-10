ssh_pub_key = "terraformclass-global.pub"
instance_tag = {
  Name    = "tf-webserver1"
  Dept    = "devops"
  Project = "Projecta"
}
ami = {
  amazon = "ami-0cca134ec43cf708f"
  rhel   = "ami-0f9d9a251c1a44858"
  suse   = "ami-05972b154774b3b6c"
}
instance_type       = ["t2.micro", "t2.small", "t2.medium"]
sgs                 = ["sg-079dc53d087d1f5a5", "sg-077512183aa95a025"]
bucket_name         = "tf57-bucket"
public_ip_on_launch = true
allow_specific      = "2.2.2.2/32"
sshport             = 22
db_username         = "jerrish"
db_password         = "jerrish123"
initial_db_name     = "students"