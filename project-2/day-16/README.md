# Day 16: Route53 Hosted Zone

## Learning Objectives

- Create Route53 hosted zone for custom domain
- Understand DNS delegation
- Document nameserver configuration
- Set up DNS foundation

## Prerequisites

- [ ] Completed Day 15
- [ ] Domain name (optional but recommended)
- [ ] Understanding of DNS basics

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-16-route53-hosted-zone
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Create Hosted Zone
- Create Route53 hosted zone for your domain (if you own one)
- OR create hosted zone for subdomain
- OR document the process thoroughly if no domain

### Task 2: Document Nameservers
- Document nameserver records from Route53
- Update registrar with Route53 nameservers (if applicable)
- Understand DNS delegation process

## Acceptance Criteria

- [ ] Hosted zone created (or process documented)
- [ ] Nameservers documented
- [ ] Understanding of DNS delegation shown

## Learning Resources

- [Route53 Hosted Zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone)
- [DNS Delegation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring.html)

**What You Have Now**: DNS ready for your domain (or understanding of how it works)
