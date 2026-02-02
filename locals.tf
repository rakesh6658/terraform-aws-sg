locals {
    commontags= {
    project = var.project
    environment = var.environment
    Terraform = true
  }
  common_name = "${var.project}-${var.environment}"
  
}