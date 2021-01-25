# Resource: Security Group
resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP & HTTPS traffic"


  dynamic "ingress" {
    iterator = port
    for_each = var.ingressrules
    content {
      from_port  = port.value
      to_port    = port.value
      protocol   = "TCP"
      cidr_block = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
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


