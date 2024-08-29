terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "webserver" {
  count                  = length(var.availability_zones)
  ami                    = "vars.ami"
  instance_type          = "vars.instance_type
  key_name               = "vars.key_name
  vpc_security_group_ids = ["sg-02d1a43a4d4424949"]
  availability_zone      = var.availability_zones[count.index]

  tags = {
    Name = var.server_names[count.index]
  }
}

# Create Elastic IP address
resource "aws_eip" "webserver" {
  vpc      = true
  instance = aws_instance.webserver.id
tags= {
    Name = "my_elastic_ip"
  }
}
