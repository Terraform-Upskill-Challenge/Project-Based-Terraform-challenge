terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Task 1: count - Create 3 buckets
resource "aws_s3_bucket" "count_buckets" {
  count  = length(var.bucket_names)
  bucket = "${var.bucket_names[count.index]}-bucket-${var.your_name}"

  tags = {
    Name        = "${var.bucket_names[count.index]}-bucket"
    Environment = var.bucket_names[count.index]
    ManagedBy   = "Terraform"
  }
}

# Task 2: for_each - Create 3 buckets with different configs
resource "aws_s3_bucket" "foreach_buckets" {
  for_each = var.bucket_configs
  bucket   = "${each.key}-bucket-${var.your_name}"

  tags = merge(
    {
      Name        = "${each.key}-bucket"
      Environment = each.value.environment
      ManagedBy   = "Terraform"
    },
    # Task 3: Conditional tags - add Backup tag if prod
    each.value.environment == "prod" ? { Backup = "Required" } : {}
  )
}

# Task 3: Conditional versioning
resource "aws_s3_bucket_versioning" "foreach_versioning" {
  for_each = var.enable_versioning ? var.bucket_configs : {}
  bucket   = aws_s3_bucket.foreach_buckets[each.key].id

  versioning_configuration {
    status = each.value.versioning ? "Enabled" : "Disabled"
  }
}

# Outputs
output "count_bucket_names" {
  description = "Names of buckets created with count"
  value       = aws_s3_bucket.count_buckets[*].id
}

output "foreach_bucket_names" {
  description = "Names of buckets created with for_each"
  value       = { for k, v in aws_s3_bucket.foreach_buckets : k => v.id }
}

output "count_bucket_0" {
  description = "First bucket from count"
  value       = aws_s3_bucket.count_buckets[0].id
}

output "foreach_bucket_app1" {
  description = "app1 bucket from for_each"
  value       = aws_s3_bucket.foreach_buckets["app1"].id
}