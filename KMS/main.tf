# Create KMS Key
resource "aws_kms_key" "my_kms_key" {
  description             = "My KMS Key"
  deletion_window_in_days = 10

  tags = {
    Name = "my_kms_key"
  }
}

# Optional: Create an Alias for the KMS Key
resource "aws_kms_alias" "my_kms_alias" {
  name          = "alias/my_kms_key_dev"
  target_key_id = aws_kms_key.my_kms_key.key_id
}
