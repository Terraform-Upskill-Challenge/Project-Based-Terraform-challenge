output "bucket_name" {
  description = "The name (ID) of the S3 bucket."
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket."
  value       = aws_s3_bucket.bucket.arn
}

output "bucket_region" {
  description = "The AWS region used for this deployment."
  value       = var.aws_region
}