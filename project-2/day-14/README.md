# Day 14: CloudFront Distribution

## Learning Objectives

- Create CloudFront distribution
- Configure S3 as origin
- Set up custom error responses
- Enable compression
- Understand CDN benefits

## Prerequisites

- [ ] Completed Day 13 (public S3 website)
- [ ] Understanding of CDN concepts
- [ ] CloudFront basics

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-14-cloudfront-distribution
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Create CloudFront Distribution
- Create CloudFront distribution with S3 as origin
- Use S3 website endpoint as origin
- Configure default root object: `index.html`

### Task 2: Custom Error Responses
- Set up custom error responses
- Configure 404 → index.html (for SPA behavior)
- Handle other error codes appropriately

### Task 3: Enable Compression
- Enable compression for better performance
- Configure viewer protocol policy (redirect HTTP to HTTPS)

### Task 4: Outputs and Testing
- Output CloudFront domain name
- Test both S3 and CloudFront URLs
- Document the CloudFront URL

## Acceptance Criteria

- [ ] CloudFront distribution created
- [ ] Origin points to S3 bucket website endpoint
- [ ] Compression enabled
- [ ] Both URLs work
- [ ] CloudFront URL documented

## Learning Resources

- [AWS CloudFront Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution)
- [CloudFront Documentation](https://docs.aws.amazon.com/cloudfront/)
- [Custom Error Responses](https://docs.aws.amazon.com/cloudfront/latest/DeveloperGuide/custom-error-pages.html)

## Deliverables

- Code: `cloudfront.tf`
- Outputs: CloudFront domain name
- Documentation: CloudFront configuration

**What You Have Now**: Resume accessible via CloudFront (faster, more professional)
