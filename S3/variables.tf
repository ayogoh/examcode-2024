variable "bucket_name" {
  description = "provide name for my bucket"
  default     = "var.bucket.ndi"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default = {
    Project     = "MyProject"
    Environment = "Dev"
  }
}
