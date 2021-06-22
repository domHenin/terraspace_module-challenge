output "sg_name" {
  value = aws_security_group.allow_http.name
}

output "sg_id" {
  value = aws_security_group.allow_http.id
}

//output "ws-instance_id" {
//  value = aws_instance.ws_container.id
//}


// output "public_ip" {
//   value = module.eip.PrivateIP
// }

// output "ws_output" {
//   value = aws_instance.ws_container.public_ip
// }

// output "publicIP" {
//   value = aws_eip.ws_eip.public_ip
// }



