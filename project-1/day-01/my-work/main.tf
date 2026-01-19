provider "aws" {
region = "us-east-1"
}

resource "aws_s3_bucket" "practice_bucket" {
bucket = "terraform-practice-nadeem-7f3a"

tags = {
Learning = "Day1"
}
}
