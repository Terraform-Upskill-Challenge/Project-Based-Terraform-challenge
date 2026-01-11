# Day 21: DynamoDB Table

## Learning Objectives

- Create DynamoDB table for visitor counts
- Understand partition keys
- Configure on-demand billing
- Design table schema

## Prerequisites

- [ ] Completed Day 20
- [ ] Understanding of NoSQL databases

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-21-dynamodb-table
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Create Table
- Create DynamoDB table named `resume-visitor-counter`
- Set partition key: `id` (String)
- Use on-demand billing

### Task 2: Design Documentation
- Document table design
- Add attribute `visit_count` (Number) in design doc
- Output table name and ARN

## Acceptance Criteria

- [ ] DynamoDB table created
- [ ] On-demand billing mode
- [ ] Partition key correctly set
- [ ] Table design documented

## Learning Resources

- [DynamoDB Table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table)
- [DynamoDB Best Practices](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/best-practices.html)

**What You Have Now**: Resume + VPC + Database for visitor counting
