resource "aws_internet_gateway" "vpc_test_gateway" {
    vpc_id = "${aws_vpc.vpc_test.id}"

    tags = {
        Name = "vpc-test-gateway"
        env = var.env
        project = var.project
        team = var.team
    }
}

resource "aws_route_table" "vpc_test_route_table" {
    vpc_id = "${aws_vpc.vpc_test.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.vpc_test_gateway.id}"
    }

    route {
        ipv6_cidr_block        = "::/0"
        egress_only_gateway_id = "${aws_egress_only_internet_gateway.infrapoc.id}"
    }

    tags = {
        Name = "vpc-test-route-table"
        env = var.env
        project = var.project
        team = var.team
    }
}

resource "aws_main_route_table_association" "vpc_test_main_rt" {
    vpc_id         = "${aws_vpc.vpc_test.id}"
    route_table_id = "${aws_route_table.vpc_test_route_table.id}"
}

resource "aws_egress_only_internet_gateway" "infrapoc" {
    vpc_id = "${aws_vpc.vpc_test.id}"
}

resource "aws_subnet" "vpc-test-pub-a" {
    availability_zone = "us-east-1a"
    cidr_block        = "10.0.3.0/24"
    vpc_id            = "${aws_vpc.vpc_test.id}"

    tags = {
        Name = "vpc-test-pub-a"
        env = var.env
        project = var.project
        team = var.team
    }
}

resource "aws_subnet" "vpc-test-pub-b" {
    availability_zone = "us-east-1b"
    cidr_block        = "10.0.4.0/24"
    vpc_id            = "${aws_vpc.vpc_test.id}"

    tags = {
        Name = "vpc-test-pub-b"
        env = var.env
        project = var.project
        team = var.team
    }
}

resource "aws_subnet" "vpc-test-pub-c" {
    availability_zone = "us-east-1c"
    cidr_block        = "10.0.5.0/24"
    vpc_id            = "${aws_vpc.vpc_test.id}"

    tags = {
        Name = "vpc-test-pub-c"
        env = var.env
        project = var.project
        team = var.team
    }
}