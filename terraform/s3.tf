resource "aws_s3_bucket" "terraform" {
  bucket = "${var.s3_bucket_prefix}-${random_string.suffix.result}"
  acl    = "private"

  versioning {
    enabled = true
  }
}