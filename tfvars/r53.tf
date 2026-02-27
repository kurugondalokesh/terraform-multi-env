resource "aws_route53_record" "expense" {
    for_each = var.instances
    zone_id  = var.zone_id
    
    # Logic for domain name
    name     = each.key == "frontend-prod" ? var.domain : "${each.key}.${var.domain}"
    type     = "A"
    ttl      = 1
    
    # FIXED: Using [each.key] instead of [count.index]
    records  = [startswith(each.key, "frontend") ? aws_instance.multi[each.key].public_ip : aws_instance.multi[each.key].private_ip]
    
    allow_overwrite = true
}