resource "aws_route53_zone" "public" {
  count = var.public ? 1 : 0
  name  = var.domain_name
}

resource "aws_route53_zone" "private" {
  count = var.private ? 1 : 0
  name  = var.domain_name

  dynamic "vpc" {
    for_each = var.vpc_associations
    content {
      vpc_id = vpc.value
    }
  }
}
