resource "aws_security_group" "main" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags = merge(
    var.sg_tags,
    local.commontags,
    {
      Name = "${local.common_name}-${var.sg_name}"
    }
  )
}