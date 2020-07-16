provider "aws" {
  region     = "ap-south-1"
  profile    = "terrauser"
}

resource "tls_private_key" "key_form" {
  algorithm = "RSA"
}

resource "aws_key_pair" "task_key" {
  key_name   = "task_key"
  public_key = "${tls_private_key.key_form.public_key_openssh}"
}
