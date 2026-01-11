# Day 23: Lambda Function Deployment

## Learning Objectives

- Create IAM role for Lambda
- Package and deploy Lambda function
- Configure environment variables
- Test Lambda in AWS

## Prerequisites

- [ ] Completed Day 22 (Lambda code working locally)
- [ ] Lambda code ready to deploy

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-23-lambda-function-deployment
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: IAM Role
- Create IAM role for Lambda with DynamoDB access
- Configure proper permissions

### Task 2: Deploy Lambda
- Package Lambda code into ZIP file
- Create Lambda function resource in Terraform
- Set environment variable for DynamoDB table name

### Task 3: Test
- Test Lambda in AWS console (manual invoke)
- Verify logs in CloudWatch

## Acceptance Criteria

- [ ] IAM role with correct permissions
- [ ] Lambda function deployed
- [ ] Environment variables configured
- [ ] Manual test successful
- [ ] Lambda logs visible

## Learning Resources

- [Lambda Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function)
- [Lambda IAM](https://docs.aws.amazon.com/lambda/latest/dg/lambda-permissions.html)

**What You Have Now**: Resume + VPC + DynamoDB + deployed Lambda function
