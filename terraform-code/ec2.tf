resource "aws_instance" "gitasdojl" {
  ami           = "ami-02df9ea15c1778c9c"
  instance_type = "t2.micro"
  key_name      = "ir1"
  tags = {
    Name = "asdojl"
  }
}

//resource "aws_eip" "gitasdojl" {
//  vpc      = true
//  instance = aws_instance.gitasdojl.id
// }

resource "aws_s3_bucket" "gitasdojl" {
  bucket = "gittfasdojl"
  acl    = "private"
}
