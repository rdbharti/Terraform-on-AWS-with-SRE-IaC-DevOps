# AWS IAM Policy
resource "aws_iam_policy" "cw_canary_iam_policy" {
  name        = "cw-canary-iam-policy"
  path        = "/"
  description = "CloudWatch Canary Synthetic IAM Policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:PutObject",
          "s3:GetObject"
        ],
        "Resource" : [
          "arn:aws:s3:::cw-syn-results-873714892822-us-east-1/canary/us-east-1/simplae-canary-5ba-8a9d1705e978/*"
        ]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:GetBucketLocation"
        ],
        "Resource" : [
          "arn:aws:s3:::cw-syn-results-873714892822-us-east-1"
        ]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "logs:CreateLogStream",
          "logs:PutLogEvents",
          "logs:CreateLogGroup"
        ],
        "Resource" : [
          "arn:aws:logs:us-east-1:873714892822:log-group:/aws/lambda/cwsyn-simplae-canary-*"
        ]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:ListAllMyBuckets",
          "xray:PutTraceSegments"
        ],
        "Resource" : [
          "*"
        ]
      },
      {
        "Effect" : "Allow",
        "Resource" : "*",
        "Action" : "cloudwatch:PutMetricData",
        "Condition" : {
          "StringEquals" : {
            "cloudwatch:namespace" : "CloudWatchSynthetics"
          }
        }
      }
    ]
  })

}

# Create IAM Role
resource "aws_iam_role" "cw_canary_iam_role" {
    name = "cw-canary-iam-role"
    description = "CloudWatch Synthetics lambda execution role for running canaries"
    path = "/service-role/"
    assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:PutObject",
          "s3:GetObject"
        ],
        "Resource" : [
          "arn:aws:s3:::cw-syn-results-873714892822-us-east-1/canary/us-east-1/simplae-canary-5ba-8a9d1705e978/*"
        ]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:GetBucketLocation"
        ],
        "Resource" : [
          "arn:aws:s3:::cw-syn-results-873714892822-us-east-1"
        ]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "logs:CreateLogStream",
          "logs:PutLogEvents",
          "logs:CreateLogGroup"
        ],
        "Resource" : [
          "arn:aws:logs:us-east-1:873714892822:log-group:/aws/lambda/cwsyn-simplae-canary-*"
        ]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:ListAllMyBuckets",
          "xray:PutTraceSegments"
        ],
        "Resource" : [
          "*"
        ]
      },
      {
        "Effect" : "Allow",
        "Resource" : "*",
        "Action" : "cloudwatch:PutMetricData",
        "Condition" : {
          "StringEquals" : {
            "cloudwatch:namespace" : "CloudWatchSynthetics"
          }
        }
      }
    ]
  })
  managed_policy_arnn = [aws_iam_policy.cw_canary_iam_policy.arn]

}

# Create S3 Bucket
resource "aws_s3_bucket" "cw_canary_bucket" {
  bucket = "cw-canary-bucket-${random_pet.this.id}"
  acl = "private"
  force_destroy = "true"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


# AWS CloudWatch Canary
resource "aws_sythetics_canary" "sswebsite2"{
   name                 = "ssswebsite2"
  artifact_s3_location = "s3://${aws_s3_bucket.cw_canary_bucket.id}/sswebsite2"
  execution_role_arn   = aws_iam_role.cw_canary_iam_role.arn
  handler              = "sswebsite2.handler"
  zip_file             = "${path.cwd}/sswebsite2/sswebsitev1.zip"
  runtime_version      = "syn-nodejs-puppeteer-3.7"
  start_canary = true
  
  run_config {
    active_tracing = true
    memory_in_mb = 960
    timeout_in_seconds = 60
  }

  schedule {
    expression = "rate(1 minute)"
  }
}

# AWS CloudWatch Metric Alarm for Synthetics Heart Beat Monitor when availability is less than 10 percent
resource "aws_cloudwatch_metric_alarm" "synthetics_alarm_app1" {
  alarm_name          = "Synthetics-Alarm-App1"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "1" # "2"
  evaluation_periods  = "1" # "3"
  metric_name         = "SuccessPercent"
  namespace           = "CloudWatchSynthetics"
  period              = "300"
  statistic           = "Average"
  threshold           = "90"  
  treat_missing_data  = "breaching" # You can also add "missing"
  dimensions = {
    CanaryName = aws_synthetics_canary.sswebsite2.id 
  }
  alarm_description = "Synthetics alarm metric: SuccessPercent  LessThanThreshold 90"
  ok_actions          = [aws_sns_topic.myasg_sns_topic.arn]  
  alarm_actions     = [aws_sns_topic.myasg_sns_topic.arn]
}