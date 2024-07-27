output "log_group_name" {
  description = "The name of the CloudWatch Log Group"
  value       = aws_cloudwatch_log_group.my_log_group.name
}

output "alarm_name" {
  description = "The name of the CloudWatch alarm"
  value       = aws_cloudwatch_metric_alarm.my_metric_alarm.alarm_name
}

output "dashboard_name" {
  description = "The name of the CloudWatch Dashboard"
  value       = aws_cloudwatch_dashboard.my_dashboard.dashboard_name
}
