# Resource: Security Group
resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP & HTTPS traffic"


  dynamic {
    iterator = port
    for_each = var.ingressrules
    content {
      from_port  = port.value
      to_port    = port.value
      protocol   = "TCP"
      cidr_block = ["0.0.0.0/0"]
    }
  }

  dynamic {
    iterator = port
    for_each = var.ingressrules
    content {
      from_port  = port.value
      to_port    = port.value
      protocol   = "TCP"
      cidr_block = ["0.0.0.0/0"]
    }
  }
}




// TODO:
// 1. create a DB Server (ec2 instance with this title) and output the private IP
// 2. Create a web server and ensure it has a fixed public IP
// 3. Create a Security Group for the web server opening ports 80 and 443 (HTTP & HTTPS)
// 4. Run the provided script on the web server