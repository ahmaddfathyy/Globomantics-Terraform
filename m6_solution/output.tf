output "public_dns_hostname" {
    value = aws_lb.nginx.dns_name
    description = "Public DNS hostname of the Loadbalancer"
}