output "ws-instance_id" {
  value = aws_instance.ws_container.id
}

output "ws_output" {
  value = aws_instance.ws_container.public_ip
}

output "db-instance_id" {
  value = aws_instance.db_container.id
}

output "db_output" {
  value = aws_instance.db_container.private_ip
}