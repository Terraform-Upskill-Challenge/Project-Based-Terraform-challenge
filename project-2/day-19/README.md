# Day 19: VPC Foundation (Part 1)

## Learning Objectives

- Create VPC with proper CIDR
- Create public and private subnets
- Use data sources for AZs
- Tag resources properly

## Prerequisites

- [ ] Completed Day 18
- [ ] Understanding of VPC networking

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-19-vpc-foundation-part1
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Create VPC
- Create VPC with CIDR 10.0.0.0/16
- Enable DNS support

### Task 2: Create Subnets
- Create 2 public subnets in different AZs (10.0.1.0/24, 10.0.2.0/24)
- Create 2 private subnets in different AZs (10.0.10.0/24, 10.0.11.0/24)
- Use data source to get available AZs dynamically
- Tag everything clearly

## Acceptance Criteria

- [ ] VPC created with DNS support
- [ ] 4 subnets across 2 AZs
- [ ] Subnets tagged as Public/Private
- [ ] Network diagram created

## Learning Resources

- [VPC Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
- [Subnet Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)

**What You Have Now**: Resume website + VPC ready for backend services
