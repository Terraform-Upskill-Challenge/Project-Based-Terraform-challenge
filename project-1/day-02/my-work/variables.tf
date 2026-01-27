variable "aws_region" {
  description = "AWS region where resources will be created."
  type        = string
  default     = "us-east-1"

  validation {
    condition     = length(var.aws_region) > 0
    error_message = "aws_region must not be empty."
  }
}

variable "bucket_name" {
  description = "Base name for the S3 bucket. A random suffix will be added for uniqueness."
  type        = string
  default     = "terraform-practice-olusola"

  validation {
    condition     = length(var.bucket_name) >= 3 && length(var.bucket_name) <= 50
    error_message = "bucket_name must be between 3 and 50 characters."
  }
}

variable "tags" {
  description = "Tags to apply to the S3 bucket. Must include at least 3 tags."
  type        = map(string)
  default = {
    Owner   = "Olusola"
    Project = "Terraform-Learning"
    Day     = "02"
  }

  validation {
    condition     = length(keys(var.tags)) >= 3
    error_message = "Please provide at least 3 tags."
  }
}
