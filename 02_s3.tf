//this resource block creates a s3 bucket

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "jerrish-tf57"
  depends_on = [
    time_sleep.wait_a_min
  ]
}