resource "aws_vpc" "custom" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"
  tags = {
    Name = "custom-sg"
    // Description = "TF created VPC"
  }
}

resource "aws_subnet" "custom_subnet" {
  count             = "${length(data.aws_availability_zones.az-sg.names)}"
  availability_zone = "${element(data.aws_availability_zones.az-sg.names, count.index)}"
  vpc_id            = "${aws_vpc.custom.id}"
  cidr_block        = "${element(var.subnet_cidr, count.index)}"
  tags = {
    Name        = "custom_subnet-${count.index + 1}"
    Description = "TF Created subnet"
  }
}
