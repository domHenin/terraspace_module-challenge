# Variable: AWS Instance
variable "instance_type" {
  description = "instance type"
  type = string
}

variable "ami_owner" {
  description = "owner for used ami"
  type = string
}

variable "instance_tag" {
  description = "name for the instance tag"
  type = string
}

variable "ws_tag" {
  description = "name for the web server tag"
  type = string
}

variable "ws_sg_id" {
  description = "security group id"
}