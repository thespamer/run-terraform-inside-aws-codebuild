provider "aws" {
  profile = "default"
  region  = "eu-west-1"
    version = "~> 3.0"
}

resource "aws_instance" "asdojl" {
  ami           = "ami-02df9ea15c1778c9c"
  instance_type = "t2.micro"
  key_name      = "ir1"
  tags = {
    Name = "asdojl"
  }
}

resource "aws_eip" "asdojl" {
  vpc      = true
  instance = aws_instance.asdojl.id
}

resource "aws_s3_bucket" "asdojl" {
  bucket = "tfasdojl"
  acl    = "private"
}
