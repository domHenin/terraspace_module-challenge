# Variable: Ingress Rules
variable "ingressrules" {
  description = "inbound rules"
  type    = list(number)
}

# Variable: Egress Rules
variable "egressrules" {
  description = "outbound rules"
  type    = list(number)
}

variable "cidr_range" {
  description = "used ranged cidr block"
  type = string
}

variable "instance_id" {
  description = "connecting the EIP with the WS Container"
  type = string
}