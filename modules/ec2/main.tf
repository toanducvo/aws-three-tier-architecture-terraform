# App - Launch Template
resource "aws_launch_template" "main" {
  name_prefix            = var.name_prefix
  image_id               = var.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.app_security_group]
  user_data              = var.user_data
 
  key_name = var.key_name

  connection {
    type  = [ "ssh" ]
    user  = var.connection_user
    private_key = file(var.private_key)
    host = var.connection_host
   }

  depends_on = [null_resource.create_key_pair]

  tags = local.required_tags
}
