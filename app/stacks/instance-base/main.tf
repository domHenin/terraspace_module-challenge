# Data: AMI lookup
data "aws_ami" "lookup" {
  most_recent = true
  owners = var.ami_owner

  filter {
    name = "name"
    values = ["zulu-jre-ami-*"]
  }
}


# Resource: DB Server Instance
resource "aws_instance" "db_container" {
  ami           = data.aws_ami.lookup.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_tag
  }
}

# Resource: Web Server Instance
resource "aws_instance" "ws_container" {
  ami           = data.aws_ami.lookup.id
  instance_type = var.instance_type
  security_groups = var.ws_sg_id


  connection {
    type        = "ssh"
    user        = "admin"
  }


  user_data = file("files/server-script.sh")


  tags = {
    Name = var.ws_tag
  }
}