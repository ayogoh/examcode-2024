variable "region" {
  description = "The AWS region to deploy the infrastructure"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet1_cidr" {
  description = "The CIDR block for the first subnet"
  default     = "10.0.1.0/24"
}

variable "subnet2_cidr" {
  description = "The CIDR block for the second subnet"
  default     = "10.0.2.0/24"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default = {
    Project = "MyProject"
    Environment = "Dev"
  }
}
