resource "aws_subnet" "vpc-test-priv-a" {
    availability_zone = "us-east-1a"
    cidr_block        = "10.0.0.0/24"
    vpc_id            = aws_vpc.vpc_test.id

    tags = {
        Name = "vpc-test-priv-a"
        env = var.env
        project = var.project
        team = var.team
    }
}

resource "aws_subnet" "vpc-test-priv-b" {
    availability_zone = "us-east-1b"
    cidr_block        = "10.0.1.0/24"
    vpc_id            = aws_vpc.vpc_test.id

    tags = {
        Name = "vpc-test-priv-b"
        env = var.env
        project = var.project
        team = var.team
    }
}

resource "aws_subnet" "vpc-test-priv-c" {
    availability_zone = "us-east-1c"
    cidr_block        = "10.0.2.0/24"
    vpc_id            = aws_vpc.vpc_test.id

    tags = {
        Name = "vpc-test-priv-c"
        env = var.env
        project = var.project
        team = var.team
    }
}