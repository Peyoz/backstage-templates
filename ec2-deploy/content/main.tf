terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = var.awsRegion
  #access_key = var.access_key
  #secret_key = var.secret_key
}

resource "aws_instance" "${{ values.InstanceName }}" {
  ami           = "ami-059dd856d3b78700d"
  instance_type = var.instanceType

  tags = {
    Name = var.instanceName
  }
}
