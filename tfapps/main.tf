resource "aws_instance" "tf_created" {
  ami="ami-0dc231c09aef801ea"
  instance_type="t2.micro"
}