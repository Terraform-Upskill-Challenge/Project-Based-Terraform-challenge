# Day 05: Count, For_Each, and Conditionals

## Count vs For_Each

### Count
**Use when:** You need multiple identical resources with numbered names
```hcl
resource "aws_s3_bucket" "example" {
  count  = 3
  bucket = "bucket-${count.index}"
}

# Reference: aws_s3_bucket.example[0]
```

**Pros:**
- Simple for identical resources
- Easy to create N resources

**Cons:**
- Changes in list order recreate resources
- Hard to remove middle items
- Index-based referencing is fragile

### For_Each
**Use when:** You need resources with unique configurations or names
```hcl
resource "aws_s3_bucket" "example" {
  for_each = var.bucket_configs
  bucket   = each.key
}

# Reference: aws_s3_bucket.example["app1"]
```

**Pros:**
- Stable references (by key, not index)
- Can remove/add items safely
- Each resource can have different config

**Cons:**
- Requires map or set (not list)
- Slightly more complex syntax

## Decision Matrix

| Scenario | Use |
|----------|-----|
| Need 5 identical buckets | `count` |
| Buckets have different configs | `for_each` |
| Might add/remove buckets | `for_each` |
| Simple duplication | `count` |
| Need stable references | `for_each` |

## Conditional Expressions
```hcl
# Ternary: condition ? true_value : false_value
versioning = var.enable ? "Enabled" : "Disabled"

# Conditional resource creation
count = var.create_bucket ? 1 : 0

# Conditional for_each
for_each = var.enabled ? var.configs : {}

# Conditional tags
tags = merge(
  { Name = "bucket" },
  var.env == "prod" ? { Backup = "Required" } : {}
)
```

## Task Completed

✅ Task 1: 3 buckets with `count`
- `dev-bucket-tovadel`
- `staging-bucket-tovadel`
- `prod-bucket-tovadel`

✅ Task 2: 3 buckets with `for_each`
- Different configs per bucket
- Custom tags and versioning

✅ Task 3: Conditional logic
- `enable_versioning` variable controls versioning
- Prod buckets get `Backup = "Required"` tag

✅ Task 4: Documentation complete

## Usage
```bash
# Initialize
terraform init

# Plan with custom values
terraform plan -var="your_name=yourname"

# Apply
terraform apply

# Test conditionals
terraform apply -var="enable_versioning=false"
terraform apply -var="environment=prod"

# Destroy
terraform destroy
```

## Examples

**Reference count resource:**
```hcl
aws_s3_bucket.count_buckets[0].id  # dev-bucket
aws_s3_bucket.count_buckets[1].id  # staging-bucket
aws_s3_bucket.count_buckets[2].id  # prod-bucket
```

**Reference for_each resource:**
```hcl

Apply complete! Resources: 9 added, 0 changed, 0 destroyed.

Outputs:

count_bucket_0 = "dev-bucket-tovadel"
count_bucket_names = [
  "dev-bucket-tovadel",
  "staging-bucket-tovadel",
  "prod-bucket-tovadel",
]
foreach_bucket_app1 = "app1-bucket-tovadel"
```

Day 05 Complete! ✅