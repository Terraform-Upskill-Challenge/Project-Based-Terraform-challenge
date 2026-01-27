# Day 02 - Variable-Based S3 Bucket (Terraform)

## Goal
Recreate the Day 1 S3 bucket, but make the configuration reusable using variables, tfvars, and outputs.

## What this creates
- An S3 bucket with a unique random suffix (to avoid name collisions)
- Tags applied using a variable map
- Outputs for bucket name, ARN, and region

## Files
- `main.tf`: Provider setup + S3 bucket + random suffix
- `variables.tf`: Variable definitions with types, descriptions, validations
- `terraform.tfvars`: Environment-specific values (ignored by git)
- `outputs.tf`: Outputs for bucket name, ARN, region
- `.gitignore`: Excludes terraform.tfvars and state files

## How to run
```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply