# Resource: Elastic IP
resource "aws_eip" "ws_eip" {
  instance = var.instance_id
  vpc      = true
}

// output "publicIP" {
//   value = aws_eip.ws_eip.public_ip
// }
