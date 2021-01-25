# Resource: DB Server Instacne
resource "aws_instance" "db_container" {
  ami           = "ami-00eb20669e0990cb4"
  instance_type = "t2.micro"

  tags = {
    Name = "DB SERVER" 
  }
}

output "PrivateIP" {
  value = aws_instance.db_container.private_ip
}