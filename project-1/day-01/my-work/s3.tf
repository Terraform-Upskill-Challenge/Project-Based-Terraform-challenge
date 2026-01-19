# Create S3 Bucket
resource "aws_s3_bucket" "learning_bucket" {
  bucket = "terraform-practice-olusola-${random_string.bucket_suffix.result}"

  tags = {
    Name     = "Terraform Practice Bucket"
    Learning = "Day1"
    Owner    = "Olusola"
    Project  = "Terraform-Learning"
  }
}

# Generate random string for unique bucket name
resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}

# Output the bucket name
output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.learning_bucket.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.learning_bucket.arn
}
