provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-067d1e60475437da2"
  instance_type = "t2.micro"

tags = {
    Name = "SampleEC2Instance"
  }
}
