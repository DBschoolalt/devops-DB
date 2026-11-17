terraform {
  required_providers {
    aws = {
      source="hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "terraform-sg" {
  name = "terraform-sg"
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 3000
  }
}

resource "aws_instance" "terraform-instance" {
  ami = "ami-021aaf3749be66813"
  instance_type = "t3.micro"
  key_name = "AWS_Name1Login"
  tags = {
    Name = "terraform-instance"
  }
}