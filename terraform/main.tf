provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "web" {
  ami = "ami-02a89066c48741345"
  instance_type = "t2.micro"
  tags = {
    Name = "My demoserver"
  }
}
