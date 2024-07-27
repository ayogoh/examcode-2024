# Create CloudWatch Log Group
resource "aws_cloudwatch_log_group" "my_log_group" {
  name = var.log_group_name

  tags = var.tags
}

# Create CloudWatch Metric
resource "aws_cloudwatch_metric_alarm" "my_metric_alarm" {
  alarm_name          = var.alarm_name
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = var.metric_name
  namespace           = var.metric_namespace
  period              = "300"
  statistic           = "Average"
  threshold           = "1"
  alarm_description   = "This alarm monitors the specified metric."

  tags = var.tags

  # Optional: Add actions for the alarm (e.g., SNS topic)
  # alarm_actions = [aws_sns_topic.my_topic.arn]
}

# Optional: Create CloudWatch Dashboard
resource "aws_cloudwatch_dashboard" "my_dashboard" {
  dashboard_name = "MyDashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type = "metric",
        x    = 0,
        y    = 0,
        width = 12,
        height = 6,
        properties = {
          metrics = [
            [var.metric_namespace, var.metric_name]
          ],
          period = 300,
          stat = "Average",
          title = "My Metric"
        }
      }
    ]
  })

  
}
