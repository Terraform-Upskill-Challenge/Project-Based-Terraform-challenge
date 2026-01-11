# Day 18: HTTPS + Custom Domain on CloudFront

## Learning Objectives

- Configure CloudFront with ACM certificate
- Add custom domain to CloudFront
- Redirect HTTP to HTTPS
- Create Route53 A record

## Prerequisites

- [ ] Completed Day 17 (ACM certificate issued)
- [ ] Route53 hosted zone configured

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-18-https-custom-domain
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Update CloudFront
- Update CloudFront to use ACM certificate
- Add custom domain as alternate domain name (CNAME)
- Redirect HTTP to HTTPS

### Task 2: Create DNS Record
- Create Route53 A record (Alias) pointing to CloudFront
- Test HTTPS access

## Acceptance Criteria

- [ ] CloudFront serves traffic on HTTPS
- [ ] Custom domain configured (if applicable)
- [ ] HTTP redirects to HTTPS
- [ ] Full HTTPS access working

## Learning Resources

- [CloudFront Custom Domain](https://docs.aws.amazon.com/cloudfront/latest/DeveloperGuide/CNAMEs.html)
- [Route53 Alias Records](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-choosing-alias-non-alias.html)

**What You Have Now**: Professional resume at https://yourname.com (or CloudFront URL with HTTPS)
