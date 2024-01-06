locals {
  required_tags = {
    project     = var.project_name,
    environment = var.environment,
  }
}