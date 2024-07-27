variable "log_group_name" {
  description = "The name of the CloudWatch Log Group"
  default     = "/aws/my-log-group"
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
