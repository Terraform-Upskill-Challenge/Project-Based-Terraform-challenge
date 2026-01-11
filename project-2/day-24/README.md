# Day 24: API Gateway

## Learning Objectives

- Create HTTP API Gateway
- Configure routes and integrations
- Enable CORS
- Test API endpoint

## Prerequisites

- [ ] Completed Day 23 (Lambda deployed)
- [ ] Lambda function working

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-24-api-gateway
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Create API Gateway
- Create HTTP API Gateway (not REST - simpler!)
- Create route: GET /api/visits
- Integrate with Lambda function

### Task 2: Configure CORS
- Enable CORS (important for frontend!)
- Allow your domain

### Task 3: Test
- Test endpoint with curl or Postman
- Verify visitor count increments

## Acceptance Criteria

- [ ] API Gateway created
- [ ] Route configured
- [ ] Lambda integration working
- [ ] CORS enabled
- [ ] Can call API and get visitor count

## Learning Resources

- [API Gateway HTTP API](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api)
- [CORS Configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-cors.html)

**What You Have Now**: Resume + working visitor counter API!
