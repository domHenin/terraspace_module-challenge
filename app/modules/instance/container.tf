# Resource: DB Server Instacne
resource "aws_instance" "db_container" {
  ami           = "ami-032598fcc7e9d1c7a"
  instance_type = "t2.micro"

  tags = {
    Name = var.database_name
  }
}

# Resource: Web Server Instance
resource "aws_instance" "ws_container" {
  ami           = "ami-032598fcc7e9d1c7a"
  instance_type = "t2.micro"

  connection {
    type        = "ssh"
    user        = "admin"
  }

  user_data = file("../../modules/files/server-script.sh")

  tags = {
    Name = var.web-server_name
  }
}

# Resource: Elastic IP
resource "aws_eip" "ws_eip" {
  instance = aws_instance.ws_container.id
  vpc      = true
}




// TODO:
// 1. create a DB Server (ec2 instance with this title) and output the private IP
// 2. Create a web server and ensure it has a fixed public IP
// 3. Create a Security Group for the web server opening ports 80 and 443 (HTTP & HTTPS)
// 4. Run the provided script on the web server