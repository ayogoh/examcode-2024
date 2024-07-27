resource "aws_s3_bucket" "deprotech" {
  bucket = "my-test-B"

  tags = {
    Name        = "My bucket"
    Environment = "PROD"
  }
}