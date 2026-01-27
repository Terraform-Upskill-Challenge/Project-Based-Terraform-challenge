# S3 Website Module

Provisions an S3 bucket configured for static website hosting.

## Usage
```hcl
module "website" {
  source = "./modules/s3-website"

  bucket_name    = "my-website-bucket"
  index_document = "index.html"
  error_document = "error.html"
  
  tags = {
    Environment = "dev"
    Project     = "MyProject"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| bucket_name | S3 bucket name | string | - | yes |
| index_document | Index document | string | index.html | no |
| error_document | Error document | string | error.html | no |
| tags | Additional tags | map(string) | {} | no |

## Outputs

| Name | Description |
|------|-------------|
| website_endpoint | S3 website endpoint |
| bucket_arn | Bucket ARN |
| bucket_name | Bucket name |
| website_url | Full website URL |

## Requirements

- Terraform >= 1.0
- AWS Provider >= 6.0


Outputs:

dev_bucket_name = "dev-website-tovadel-87001a6c"
dev_website_url = "http://dev-website-tovadel-87001a6c.s3-website-us-east-1.amazonaws.com"
prod_bucket_name = "prod-website-tovadel-f78ca27b"
prod_website_url = "http://prod-website-tovadel-f78ca27b.s3-website-us-east-1.amazonaws.com"