
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket_day1" {
  bucket = "terraform-practice-christelle-day1"

  tags = {

    learning = "Day1"

  }


}