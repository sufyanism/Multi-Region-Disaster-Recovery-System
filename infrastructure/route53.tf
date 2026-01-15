resource "aws_route53_health_check" "primary" {
  fqdn          = "primary.example.com"
  port          = 80
  type          = "HTTP"
  resource_path = "/health"
}
