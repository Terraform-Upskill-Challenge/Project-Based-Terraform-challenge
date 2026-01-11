# Day 13: Public Access + Bucket Policy

## Learning Objectives

- Configure public read access for S3 bucket
- Create bucket policy for public access
- Understand security implications
- Test public website access

## Prerequisites

- [ ] Completed Day 12 (files uploaded)
- [ ] Understanding of IAM policies
- [ ] Security awareness

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-13-public-access-bucket-policy
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Create Bucket Policy
- Create bucket policy allowing public `GetObject`
- Use `data.aws_iam_policy_document` or JSON file
- Policy should allow public read access to objects

### Task 2: Disable Block Public Access
- Disable "Block all public access" settings
- **Carefully** configure - understand security implications
- Use `aws_s3_bucket_public_access_block` resource

### Task 3: Test and Document
- Test website is publicly accessible
- Document security considerations
- Add security warning comments in code

## Acceptance Criteria

- [ ] Bucket policy correctly configured
- [ ] Website publicly accessible via S3 endpoint
- [ ] Security implications documented
- [ ] Screenshot of working resume

## Learning Resources

- [S3 Bucket Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-policies.html)
- [Public Access Block](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html)
- [IAM Policy Document Data Source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)

## Deliverables

- Code: Bucket policy configuration
- Documentation: Security considerations
- Screenshot: Working public resume

**What You Have Now**: A publicly accessible resume website (basic, no custom domain yet)
