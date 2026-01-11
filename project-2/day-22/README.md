# Day 22: Lambda Function Code (Local Development)

## Learning Objectives

- Write Lambda function code
- Test locally with AWS SDK
- Design API interface
- Handle errors properly

## Prerequisites

- [ ] Completed Day 21 (DynamoDB table)
- [ ] Python or Node.js knowledge
- [ ] AWS SDK installed locally

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-22-lambda-function-code
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Write Function
- Write Lambda function that:
  - Gets current count from DynamoDB
  - Increments count
  - Updates DynamoDB
  - Returns new count as JSON

### Task 2: Local Testing
- Test locally using boto3 (Python) or AWS SDK (Node.js)
- Document API design (input/output)
- Add error handling

## Acceptance Criteria

- [ ] Function code written
- [ ] Can increment counter in DynamoDB (test manually)
- [ ] Returns JSON response
- [ ] Error handling included
- [ ] Code documented

## Learning Resources

- [AWS Lambda Python](https://docs.aws.amazon.com/lambda/latest/dg/lambda-python.html)
- [Boto3 DynamoDB](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/dynamodb.html)

**Note**: No Terraform yet - just write and test the code

**What You Have Now**: Resume + VPC + DynamoDB + working Lambda code (local)
