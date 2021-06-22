 output "PrivateIP" {
   value = aws_instance.db_container.private_ip
 }

 output "instance_id" {
   value = aws_instance.ws_container.id
 }