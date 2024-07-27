# Create S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket.ndi

  tags = var.tags
}

# Optional: Add a bucket policy (example policy allowing public read access to objects)
resource "aws_s3_bucket_policy" "my_bucket_policy" {
  bucket = aws_s3_bucket.my_bucket.id

  policy = jsoncode({
    Version = "2012-10-17",
    Statement = [
      {
        Action    = "s3:GetObject",
        Effect    = "Allow",
        Resource  = "${aws_s3_bucket.my_bucket.arn}/*",
        Principal = "*",
      },
    ],
  })
}

# Optional: Enable server-side encryption by default
resource "aws_s3_bucket_server_side_encryption_configuration" "my_bucket_sse" {
  bucket = aws_s3_bucket.my_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
