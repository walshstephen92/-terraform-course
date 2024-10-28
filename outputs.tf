output "hello_world" {
  description = "Print a Hello World text output."
  value       = "Hello World"
}

output "vpc_id" {
  description = "Output for the ID of the primary VPC."
  value       = aws_vpc.vpc.id
}

output "public_url" {
  description = "Public URL for our web server."
  value       = "https://${aws_instance.web_server.private_ip}:8080/index.html"
}

output "vpc_information" {
  description = "VPC information about environment."
  value       = "Your ${aws_vpc.vpc.tags.Environment} VPC has an ID of ${aws_vpc.vpc.id}"
}