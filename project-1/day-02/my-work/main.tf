terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}-${random_string.bucket_suffix.result}"

  tags = var.tags
}
