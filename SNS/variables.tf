variable "region" {
  description = "The AWS region to deploy the CloudWatch resources"
  default     = "us-east-1"
}

variable "log_group_name" {
  description = "The name of the CloudWatch Log Group"
  default     = "my-sns-dev"
}

variable "metric_namespace" {
  description = "The namespace for the CloudWatch metric"
  default     = "MyNamespace"
}

variable "metric_name" {
  description = "The name of the CloudWatch metric"
  default     = "MyMetric"
}

variable "alarm_name" {
  description = "The name of the CloudWatch alarm"
  default     = "MyAlarm"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default = {
    Project     = "MyProject"
    Environment = "Dev"
  }
}
