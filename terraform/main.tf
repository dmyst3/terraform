provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami                    = "ami-25488752"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
  user_data              = "${file("template/user_data.sh")}"

  tags {
    Name = "hello-world-web"
  }
}
