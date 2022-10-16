# Define CloudWatch Alarms for ALB
# Alert if HTTP 4xx error are more than threshold value
resource "aws_cloudwatch_metric_alarm" "alb_4xx_errors" {
  alarm_name          = "App1-ALB-HTTP-4xx-errors"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "HTTPCode_Target_4XX_Count"
  namespace           = "AWS/ApplicationELB"
  period              = "120"
  statistic           = "Sum"
  threshold           = "5" # real-world values are like 100, 200 etc
  treat_missing_data = "missing"

  dimensions = {
    LoadBalancer = module.alb.lb_arn_suffix
  }

  alarm_description = "This metric monitors ALB HTTP 4xx errors and if they are above 100 in specified interval, it is going to send a notification email"
  ok_actions        = [aws_sns_topic.myasg_sns_topic.arn]
  alarm_actions     = [aws_sns_topic.myasg_sns_topic.arn]
}