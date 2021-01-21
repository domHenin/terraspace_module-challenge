# Provider: AWS
provider "aws" {
  region = var.aws_region
}

# Module: Web-Server
module "ws_module" {
  source   = "../../modules/instance"
  database_name = "Database Server"
  web-server_name = "Web-server"
}

// output "ws-module_output" {
//   value = module.ws_module.instance_id
// }


# Module: Database Server
module "db_module" {
  source   = "../../modules/instance"
  database_name = "Database Server"
  web-server_name = "Web-server"
}

// output "db-module_output" {
//   value = module.db_module.instance_id
// }


// TODO:
// 1. create a DB Server (ec2 instance with this title) and output the private IP
// 2. Create a web server and ensure it has a fixed public IP
// 3. Create a Security Group for the web server opening ports 80 and 443 (HTTP & HTTPS)
// 4. Run the provided script on the web server