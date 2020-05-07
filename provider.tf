provider "aws" {
  profile = "tfuser"
  region  = "${var.region}"
}
resource "aws_instance" "tf_created" {
  ami           = "${lookup(var.ec2_ami, var.region)}"
  instance_type = "${var.ec2_instance_type}"
  //  instance_state         = "stopped"
  // vpc_security_group_ids = ["sg-0e84f9447da4e5654"]
  // vpc_security_group_ids = "${var.vpc_cidr}"
  // key_name               = "ansible"
  tags = {
    Name = "tf.sg"
  }
}
