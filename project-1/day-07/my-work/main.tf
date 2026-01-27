terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Dev environment website
module "dev_website" {
  source = "./modules/s3-website"

  bucket_name    = "dev-website-tovadel-${random_id.dev.hex}"
  index_document = "index.html"
  error_document = "error.html"

  tags = {
    Environment = "dev"
    Project     = "Day07"
    CostCenter  = "Development"
  }
}

# Prod environment website
module "prod_website" {
  source = "./modules/s3-website"

  bucket_name    = "prod-website-tovadel-${random_id.prod.hex}"
  index_document = "index.html"
  error_document = "404.html"

  tags = {
    Environment = "prod"
    Project     = "Day07"
    CostCenter  = "Production"
    Backup      = "Required"
  }
}

# Random IDs for unique bucket names
resource "random_id" "dev" {
  byte_length = 4
}

resource "random_id" "prod" {
  byte_length = 4
}

# Outputs
output "dev_website_url" {
  description = "Dev website URL"
  value       = module.dev_website.website_url
}

output "prod_website_url" {
  description = "Prod website URL"
  value       = module.prod_website.website_url
}

output "dev_bucket_name" {
  value = module.dev_website.bucket_name
}

output "prod_bucket_name" {
  value = module.prod_website.bucket_name
}

resource "aws_s3_object" "dev_index" {
  bucket       = module.dev_website.bucket_name
  key          = "index.html"
  content      = "<h1>Dev Website</h1>"
  content_type = "text/html"
}

resource "aws_s3_object" "prod_index" {
  bucket       = module.prod_website.bucket_name
  key          = "index.html"
  content      = "<h1>Prod Website</h1>"
  content_type = "text/html"
}