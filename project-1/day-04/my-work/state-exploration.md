# State Exploration - Day 04

## What is Terraform State?

State is Terraform's database. It tracks:
- Resource IDs (bucket names, instance IDs, etc.)
- Resource metadata and attributes
- Dependencies between resources
- Output values

## Why State Matters

1. **Mapping**: Links your config to real AWS resources
2. **Performance**: Caches resource info (no need to query AWS every time)
3. **Metadata**: Stores info only known after creation (ARNs, IDs)
4. **Collaboration**: Remote state lets teams work together
5. **Dependencies**: Tracks which resources depend on others

## State Locking

**Problem**: Two people run `terraform apply` at the same time → corrupted state

**Solution**: DynamoDB lock
- Person A runs apply → DynamoDB creates lock entry
- Person B tries to apply → sees lock, must wait
- Person A finishes → lock released
- Person B can now proceed

## State Commands
```bash
# List all resources in state
terraform state list

# Show details of specific resource
terraform state show aws_s3_bucket.example

# Remove resource from state (doesn't delete it!)
terraform state rm aws_s3_bucket.example

# Rename resource in state
terraform state mv aws_s3_bucket.old aws_s3_bucket.new

# Import existing resource into state
terraform import aws_s3_bucket.example my-bucket-name

# View outputs
terraform output

# Download state file
terraform state pull > state.json
```

## View Your State
```bash
# Download and view state
aws s3 cp s3://learning-terraform-state-tovadel/terraform.tfstate - | jq

# See just resources
aws s3 cp s3://learning-terraform-state-tovadel/terraform.tfstate - | jq '.resources'

# Count resources
terraform state list | wc -l
```

## State File Structure
```json
{
  "version": 4,
  "terraform_version": "1.5.0",
  "serial": 3,
  "resources": [
    {
      "type": "aws_s3_bucket",
      "name": "example",
      "instances": [
        {
          "attributes": {
            "id": "my-bucket",
            "arn": "arn:aws:s3:::my-bucket",
            "region": "us-east-1"
          }
        }
      ]
    }
  ]
}
```

## ⚠️ NEVER Manually Edit State

**DON'T:**
```bash
# Download state
aws s3 cp s3://bucket/terraform.tfstate state.json
# Edit state.json manually
nano state.json
# Upload modified state
aws s3 cp state.json s3://bucket/terraform.tfstate
```

**Why it's dangerous:**
- Breaks resource tracking
- Causes Terraform to recreate resources
- Can orphan resources (exist in AWS but not in state = surprise bills!)
- Corrupts dependencies
- No audit trail

**DO THIS INSTEAD:**
```bash
# Use terraform state commands
terraform state rm aws_s3_bucket.example
terraform state mv old_name new_name
terraform import aws_s3_bucket.example bucket-name
```

## Test State Locking

Open two terminals:

**Terminal 1:**
```bash
terraform apply
# Don't press yes yet, leave it waiting
```

**Terminal 2:**
```bash
terraform apply
# You'll see lock error - this is good!
```

## State Recovery

If you mess up state:
```bash
# List S3 versions (versioning enabled!)
aws s3api list-object-versions \
  --bucket learning-terraform-state-tovadel \
  --prefix terraform.tfstate

# Restore previous version
aws s3api get-object \
  --bucket learning-terraform-state-tovadel \
  --key terraform.tfstate \
  --version-id <VERSION_ID> \
  restored-state.json
```

## Best Practices

✅ **DO:**
- Use remote state for teams
- Enable S3 versioning
- Encrypt state (contains sensitive data)
- Use state locking
- Use terraform state commands

❌ **DON'T:**
- Commit state to git
- Manually edit state
- Share state between unrelated projects
- Disable encryption
- Ignore lock errors

## Common Issues

**Lock stuck?**
```bash
terraform force-unlock <LOCK_ID>
```

**State version mismatch?**
```bash
# Upgrade Terraform to match version
terraform version
```

**Resource exists but not in state?**
```bash
terraform import <resource_address> <resource_id>
```

**State out of sync?**
```bash
terraform plan -refresh-only
terraform apply -refresh-only
```

## Summary

- State = Terraform's memory of your infrastructure
- Remote state = Team collaboration + safety
- State locking = Prevents conflicts
- Never edit manually = Use terraform commands
- S3 versioning = Disaster recovery

Day 4 Complete! ✅