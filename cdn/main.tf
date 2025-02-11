resource "aws_cloudfront_origin_access_control" "oac" {
  name                          = var.oac_name
  description                   = var.oac_description
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_cloudfront_distribution" "cdn" {
  origin {
    domain_name = var.bucket_regional_domain_name
    origin_id   = var.origin_id

    origin_access_control_id = aws_cloudfront_origin_access_control.oac.id
  }

  enabled        = var.enabled
  is_ipv6_enabled = var.is_ipv6_enabled

  default_cache_behavior {
    allowed_methods        = var.allowed_methods
    cached_methods         = var.cached_methods
    target_origin_id       = var.origin_id
    viewer_protocol_policy = var.viewer_protocol_policy

    forwarded_values {
      query_string = var.query_string
      cookies {
        forward = var.cookie_forwarding
      }
    }
  }

  default_root_object = var.default_root_object

  restrictions {
    geo_restriction {
      restriction_type = var.restriction_type
    }
  }

viewer_certificate {
  acm_certificate_arn            = length(var.custom_domain_name) > 0 ? var.acm_certificate_arn : null
  ssl_support_method             = length(var.custom_domain_name) > 0 ? "sni-only" : null
  cloudfront_default_certificate = length(var.custom_domain_name) == 0 ? true : null
}




aliases = length(var.custom_domain_name) > 0 ? [var.custom_domain_name] : null




  price_class = var.price_class
}
