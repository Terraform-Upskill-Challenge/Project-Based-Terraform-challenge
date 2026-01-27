# Day 06: Built-in Functions

## Functions Demonstrated

### Task 1: jsonencode()
Creates IAM policy with dynamic bucket names
```hcl
jsonencode({
  Statement = [...]
})
```

### Task 2: templatefile()
Renders userdata script with variables and conditionals
```hcl
templatefile("userdata.sh.tpl", {
  instance_name = "web-dev"
  region        = "us-east-1"
})
```

### Task 3: concat() and merge()
```hcl
# Combine lists
concat([22, 80], [443])

# Combine maps
merge(base_tags, env_tags, conditional_tags)
```

### Task 4: lookup()
Safe map access with defaults
```hcl
lookup(map, "key", "default")
```

### Task 5: String Functions
```hcl
lower("STRING")      # string
upper("string")      # STRING
title("hello world") # Hello World
substr("hello", 0, 3) # hel
replace("dev", "dev", "development") # development
```

## Function Categories

**String Functions:**
- `upper()`, `lower()`, `title()`
- `substr()`, `replace()`, `trim()`
- `format()`, `join()`, `split()`

**Collection Functions:**
- `concat()`, `merge()`, `flatten()`
- `lookup()`, `keys()`, `values()`
- `length()`, `contains()`

**Encoding Functions:**
- `jsonencode()`, `jsondecode()`
- `base64encode()`, `base64decode()`

**Filesystem Functions:**
- `file()`, `templatefile()`
- `fileexists()`, `dirname()`, `basename()`

## Usage
```bash
terraform init
terraform plan
terraform apply

# Test different environments
terraform apply -var="environment=prod"
terraform apply -var="environment=staging"
```

## Key Learnings

- `jsonencode()` creates valid JSON without escaping
- `templatefile()` supports conditionals and loops
- `concat()` and `merge()` combine collections
- `lookup()` prevents errors from missing keys
- String functions create dynamic resource names
- `random_id` generates unique identifiers


Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

Outputs:

allowed_ports = [
  22,
  80,
]
bucket_name = "dev-demo-bucket-6308dfc4"
iam_policy_json = "{\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::bucket1/*\",\"arn:aws:s3:::bucket2/*\"]}],\"Version\":\"2012-10-17\"}"
instance_type = "t2.micro"
merged_tags = {
  "Environment" = "dev"
  "ManagedBy" = "Terraform"
  "Project" = "Day06"
}
random_suffix = "6308dfc4"
Day 06 Complete! ✅