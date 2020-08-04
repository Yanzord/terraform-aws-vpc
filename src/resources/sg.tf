resource "aws_security_group" "sg_vpc_test" {
    name = "sg_vpc_test"
    vpc_id = "${aws_vpc.vpc_test.id}"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["10.0.0.0/16"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "sg-vpc-test"
        env = var.env
        project = var.project
        team = var.team
    }
}