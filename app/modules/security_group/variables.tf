# Variable: Ingress Rules
variable "ingressrules" {
  type    = list(number)
  default = [80, 443]
}

# Variable: Egress Rules
variable "egreessrules" {
  type    = list(number)
  default = [80, 443]
}