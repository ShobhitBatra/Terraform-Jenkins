provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "tf-instance" {
  ami = "ami-02d26659fd82cf299"
  instance_type = "t2.micro"

  tags = {
    Name= "jenkins-tf-instance"
  }
}

output "ec2_public_ip" {
  value = aws_instance.tf-instance.public_ip
}