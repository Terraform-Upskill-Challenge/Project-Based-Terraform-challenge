# Module Design Guide

## When to Create Modules

**Create a module when:**
- Code is reused across projects/environments
- Resource configuration is complex and repeatable
- You want to enforce standards across teams
- Logical grouping of related resources makes sense

**Don't create a module when:**
- Code is used only once
- Configuration is too simple (single resource)
- Module overhead outweighs benefits

## Module Design Principles

### 1. Single Responsibility
Each module should do one thing well
```hcl
# Good: s3-website module creates S3 website
# Bad: web-app module creates S3, EC2, RDS, CloudFront
```

### 2. Clear Inputs and Outputs
```hcl
# Inputs: What module needs to work
variable "bucket_name" { }

# Outputs: What others need from module
output "website_endpoint" { }
```

### 3. Sensible Defaults
```hcl
variable "index_document" {
  default = "index.html"  # Most common case
}
```

### 4. No Hard-coded Values
```hcl
# Bad
bucket = "my-bucket"

# Good
bucket = var.bucket_name
```

## Module Structure
```
module-name/
├── main.tf       # Resources
├── variables.tf  # Inputs
├── outputs.tf    # Outputs
├── README.md     # Documentation
└── versions.tf   # Provider requirements (optional)
```

## Best Practices

### 1. Documentation
Always include README with:
- Purpose
- Usage example
- Input/output tables
- Requirements

### 2. Versioning
For shared modules:
```hcl
module "website" {
  source  = "git::https://github.com/org/modules.git//s3-website?ref=v1.0.0"
}
```

### 3. Validation
```hcl
variable "environment" {
  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "Environment must be dev or prod"
  }
}
```

### 4. Testing
- Test module independently
- Use examples/ directory for test cases
- Verify outputs are correct

### 5. Composability
Modules should work together:
```hcl
module "network" {
  source = "./modules/vpc"
}

module "app" {
  source    = "./modules/ec2"
  subnet_id = module.network.subnet_id
}
```

## Module Sources

**Local:**
```hcl
source = "./modules/s3-website"
```

**Git:**
```hcl
source = "git::https://github.com/user/repo.git//modules/s3?ref=v1.0"
```

**Terraform Registry:**
```hcl
source  = "terraform-aws-modules/s3-bucket/aws"
version = "3.0.0"
```

## Module Inputs Guidelines

**Required vs Optional:**
```hcl
# Required: no default
variable "bucket_name" {
  type = string
}

# Optional: has default
variable "versioning" {
  type    = bool
  default = false
}
```

**Type Constraints:**
```hcl
variable "tags" {
  type = map(string)
}

variable "ports" {
  type = list(number)
}
```

## Module Outputs Guidelines

Output everything users might need:
```hcl
output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "bucket_id" {
  value = aws_s3_bucket.this.id
}
```

## Common Patterns

### 1. Environment-specific Config
```hcl
module "dev_website" {
  source = "./modules/s3-website"
  tags   = { Environment = "dev" }
}

module "prod_website" {
  source = "./modules/s3-website"
  tags   = { Environment = "prod" }
}
```

### 2. Count/For_each with Modules
```hcl
module "websites" {
  source   = "./modules/s3-website"
  for_each = var.environments
  
  bucket_name = "${each.key}-website"
  tags        = each.value
}
```

### 3. Conditional Resources
```hcl
resource "aws_s3_bucket_versioning" "this" {
  count  = var.enable_versioning ? 1 : 0
  bucket = aws_s3_bucket.this.id
}
```

## Anti-patterns to Avoid

❌ **Too many inputs** - module becomes difficult to use
❌ **No documentation** - others can't use it
❌ **Hard-coded values** - reduces reusability
❌ **No outputs** - can't reference module resources
❌ **God modules** - doing too many things

## Summary

**Good Module:**
- Single purpose
- Well documented
- Sensible defaults
- Clear inputs/outputs
- Reusable

**Module Checklist:**
- [ ] README.md exists
- [ ] Variables have descriptions
- [ ] Outputs have descriptions
- [ ] No hard-coded values
- [ ] Tested independently
- [ ] Examples provided

Day 07 Complete! ✅