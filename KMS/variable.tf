variable "region" {
  description = "The AWS region to deploy the KMS key"
  default     = "us-east-1"
}

variable "key_alias" {
  description = "The alias for the KMS key"
  default     = "alias/my-key-alias"
}

variable "key_description" {
  description = "The description of the KMS key"
  default     = "My KMS key for encrypting data"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default = {
    Project     = "MyProject"
    Environment = "Dev"
  }
}
