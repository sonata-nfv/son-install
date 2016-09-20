variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "aws_key_path" {
  default = "~/.ssh/aws-key.pem"
}
variable "aws_key_name" {
  default = "AWS Key"
}

variable "aws_region" {
  default = "eu-west-1"
  #default = "eu-central-1"
}

variable "aws_vpc" {
  default = "vpc-70c53815"
}

variable "aws_amis" { 
  default = { 
    #eu-west-1 = "ami-b1cf19c6" 
    eu-west-1 = "ami-f1810f86" # ubuntu 14.04 LTS
    us-east-1 = "ami-de7ab6b6" 
    us-west-1 = "ami-3f75767a" 
    us-west-2 = "ami-21f78e11" 
  }
} 
