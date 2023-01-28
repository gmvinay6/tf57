variable "ami" {

}

variable "instance_type" {

}

variable "bucket_name" {

}

variable "allow_specific" {
  description = "this allows corp office public ip"
  default     = "1.1.1.1/32"
}