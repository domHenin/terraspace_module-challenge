# Resource: Web Server Instance
resource "aws_instance" "ws_container" {
  ami           = "ami-00eb20669e0990cb4"
  instance_type = "t2.micro"
  security_groups = [module.sg.sg_name]


  connection {
    type        = "ssh"
    user        = "admin"
  }


  user_data = file("../../modules/files/server-script.sh")


  tags = {
    Name = "Web-Server"
  }
}

output "publicIP" {
  value = aws_eip.ws_eip.public_ip
}

module "eip" {
  source = "../elastic-ip"
  instance_id = aws_instance.ws_container.id
}

module "sg" {
  source = "../security-group"

}



// TODO:
// 1. create a DB Server (ec2 instance with this title) and output the private IP
// 2. Create a web server and ensure it has a fixed public IP
// 3. Create a Security Group for the web server opening ports 80 and 443 (HTTP & HTTPS)
// 4. Run the provided script on the web server