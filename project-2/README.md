# Project 2: Cloud Resume Platform

## Overview

**Duration**: 3 Weeks (Days 11-25)  
**Goal**: Build a complete Cloud Resume/Portfolio Platform with API backend. Each day adds ONE new piece to the same, growing infrastructure.

By the end of Project 2, you'll have deployed:
- Static resume website (HTML/CSS/JS) on S3 + CloudFront
- Visitor counter API (Lambda or ECS)
- DynamoDB for visitor counts
- Custom domain with HTTPS
- VPC networking foundation
- Complete integration between frontend and backend

## Architecture Journey

```
Week 3: Static Website Foundation
├── Day 11: Project Setup + S3 Bucket
├── Day 12: Upload Resume Files
├── Day 13: Public Access + Bucket Policy
├── Day 14: CloudFront Distribution
└── Day 15: Documentation & Code Quality

Week 4: Custom Domain + Network Foundation
├── Day 16: Route53 Hosted Zone
├── Day 17: ACM Certificate
├── Day 18: HTTPS + Custom Domain on CloudFront
├── Day 19: VPC Foundation (Part 1)
└── Day 20: VPC Foundation (Part 2) - Routing

Week 5: Visitor Counter API (Backend)
├── Day 21: DynamoDB Table
├── Day 22: Lambda Function Code (Local Development)
├── Day 23: Lambda Function Deployment
├── Day 24: API Gateway
└── Day 25: Connect Frontend to API
```

## Prerequisites

Before starting Project 2, ensure you have:

- [ ] Completed Project 1 (Terraform Foundations)
- [ ] AWS Account with appropriate permissions
- [ ] Domain name (optional but recommended)
- [ ] Basic HTML/CSS/JavaScript knowledge
- [ ] Python or Node.js knowledge (for Lambda)
- [ ] Git repository set up
- [ ] Remote state backend configured (from Day 4)

## Getting Started

### 1. Fork and Clone

```bash
# If you haven't already
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Set Up Project 2

```bash
cd project-2
# You'll create your working directory in Day 11
```

### 3. Start with Day 11

Each day builds on the previous one. Start with Day 11 and work sequentially.

## Important Notes

### Infrastructure Persistence

**CRITICAL**: Unlike Project 1, you will NOT destroy resources after each day. The infrastructure grows day by day. Only destroy when:
- You're completely done with Project 2
- You need to start over
- You're instructed to do so

### State Management

- Use the remote backend (S3 + DynamoDB) from Day 4
- State is shared across all days
- Be careful with state operations

### Cost Management

- This project will incur AWS costs
- Use free tier resources when possible
- Monitor costs regularly
- Set up billing alerts
- Destroy when complete

### Domain Name

- Having your own domain is recommended but not required
- You can use CloudFront URL if you don't have a domain
- Day 16-18 can be done with documentation if no domain

## Daily Workflow

1. **Read** the day's README.md
2. **Review** previous day's infrastructure
3. **Research** new concepts using provided resources
4. **Build** the new piece of infrastructure
5. **Test** your implementation
6. **Document** changes and learnings
7. **Commit** your progress

## Project Structure

Your final structure will look like:

```
project-2/
└── cloud-resume/
    ├── main.tf
    ├── providers.tf
    ├── variables.tf
    ├── backend.tf
    ├── s3.tf
    ├── cloudfront.tf
    ├── route53.tf
    ├── acm.tf
    ├── vpc.tf
    ├── dynamodb.tf
    ├── lambda.tf
    ├── api-gateway.tf
    ├── website/
    │   ├── index.html
    │   ├── styles.css
    │   └── script.js
    ├── lambda/
    │   └── visitor-counter/
    │       └── index.py
    └── README.md
```

## Deliverables

At the end of Project 2, you should have:

- [ ] Complete cloud resume platform deployed
- [ ] Working visitor counter API
- [ ] Custom domain with HTTPS (if applicable)
- [ ] VPC networking foundation
- [ ] Complete documentation
- [ ] Understanding of full-stack cloud architecture

## Resources

### Official Documentation
- [AWS S3 Static Website Hosting](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html)
- [AWS CloudFront](https://docs.aws.amazon.com/cloudfront/)
- [AWS Lambda](https://docs.aws.amazon.com/lambda/)
- [AWS API Gateway](https://docs.aws.amazon.com/apigateway/)
- [AWS DynamoDB](https://docs.aws.amazon.com/dynamodb/)

### Recommended Reading
- Cloud Resume Challenge (inspiration)
- AWS Well-Architected Framework

## Next Steps

After completing Project 2, you'll move to **Project 3: Production Hardening & CI/CD**, where you'll add:
- CI/CD pipelines
- Monitoring and alerting
- Security hardening
- Backup strategies
- Performance optimization

---

**Remember**: Each day builds on the previous. Take your time and understand each piece!

**Let's build something real!** 🚀
