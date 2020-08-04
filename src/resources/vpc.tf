provider "aws" {
  region = var.region
}

resource "aws_vpc" "vpc_test" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-test"
    env = var.env
    project = var.project
    team = var.team
  }
}