# Day 20: VPC Foundation (Part 2) - Routing

## Learning Objectives

- Create Internet Gateway
- Configure route tables
- Associate subnets with route tables
- Understand public vs private routing

## Prerequisites

- [ ] Completed Day 19 (VPC and subnets)

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-20-vpc-foundation-part2-routing
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Internet Gateway
- Create Internet Gateway and attach to VPC

### Task 2: Route Tables
- Create route table for public subnets (0.0.0.0/0 → IGW)
- Associate public subnets with public route table
- Create route table for private subnets (no internet route yet)
- Associate private subnets with private route table

## Acceptance Criteria

- [ ] IGW created and attached
- [ ] Public route table routes to internet
- [ ] Subnet associations correct
- [ ] Private route table exists

## Learning Resources

- [Internet Gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)
- [Route Table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)

**What You Have Now**: Resume website + VPC with internet access in public subnets

**Submission**: PR "Week 4 - [Your Name] - Domain + VPC Foundation"
