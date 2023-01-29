output "linux_webserver_public_endpoint" {
  value = "https://${aws_instance.demo_instance.public_dns}"
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.demo_bucket.arn
}

output "allowed_corp_public_ip" {
  value = "This is the corp dc public IP - ${var.allow_specific}"
}