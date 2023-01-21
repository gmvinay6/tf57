output "linux_webserver_public_dns_name" {
  value = aws_instance.demo_instance.public_dns
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.demo_bucket.arn
}