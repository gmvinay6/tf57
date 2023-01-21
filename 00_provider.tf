terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.49.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
  alias   = "tf57-singapore"
}

provider "aws" {
  profile = "production"
  region  = "ap-south-1"
  alias   = "tf57-mumbai-production"
}