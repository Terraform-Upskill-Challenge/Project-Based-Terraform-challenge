# Day 17: ACM Certificate

## Learning Objectives

- Request ACM certificate for HTTPS
- Configure DNS validation
- Understand certificate requirements for CloudFront
- Wait for certificate issuance

## Prerequisites

- [ ] Completed Day 16 (Route53 hosted zone)
- [ ] Understanding of SSL/TLS certificates

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-17-acm-certificate
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Request Certificate
- Request ACM certificate in **us-east-1** (required for CloudFront!)
- Use DNS validation method
- Create Route53 records for validation (if you have domain)

### Task 2: Wait and Document
- Wait for certificate to be issued (20-30 minutes)
- Document the validation process
- Track certificate status

## Acceptance Criteria

- [ ] Certificate requested in us-east-1
- [ ] DNS validation configured
- [ ] Validation records created (if applicable)
- [ ] Process documented

## Learning Resources

- [ACM Certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate)
- [DNS Validation](https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html)

**Note**: This may take 20-30 minutes to validate. Good time for a break!

**What You Have Now**: SSL certificate (issued or pending)
