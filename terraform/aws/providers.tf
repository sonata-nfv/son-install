provider "aws" {
  #access_key = "${var.aws_access_key}"
  #secret_key = "${var.aws_secret_key}"
  shared_credentials_file  = "/home/ubuntu/.aws/"
  region     = "${var.aws_region}"
}

