# Day 26: Architecture Decision - Lambda vs ECS

## Learning Objectives

- Document current architecture
- Research ECS Fargate alternative
- Compare Lambda vs ECS
- Make informed decision
- Plan next steps

## Prerequisites

- [ ] Completed Project 2 (Days 11-25)
- [ ] Working Lambda + API Gateway setup
- [ ] Understanding of serverless vs containers

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-26-architecture-decision
```

### 3. Navigate to Your Project

```bash
cd project-3
# Continue from your Project 2 infrastructure
```

## Tasks

### Task 1: Document Current Architecture
- Document current architecture (Lambda + API Gateway)
- List all components and their relationships
- Document pros and cons of current approach

### Task 2: Research ECS Fargate
- Research ECS Fargate for containerized API
- Understand container deployment
- Research costs, scalability, use cases

### Task 3: Comparison
- Compare Lambda vs ECS for this use case
- Consider:
  - Cost
  - Scalability
  - Complexity
  - Learning value
  - Maintenance
  - Performance
- Create comparison matrix

### Task 4: Decision and Planning
- Decide: Keep Lambda OR refactor to ECS
- Document your decision with rationale
- Plan the next 4 days based on your choice

## Two Paths

### Track A (Beginner - Recommended)
**Keep Lambda, add enhancements:**
- Day 27: Add Caching Layer (ElastiCache Redis)
- Day 28: Add Analytics (CloudWatch)
- Day 29: Add Rate Limiting (API Gateway + WAF)
- Day 30: Performance Testing

### Track B (Advanced)
**Refactor to ECS Fargate:**
- Day 27: Containerize the API
- Day 28: ECS Cluster + Task Definition
- Day 29: ECS Service + Load Balancer
- Day 30: Switch Frontend to ECS API

## Acceptance Criteria

- [ ] Current architecture documented
- [ ] ECS approach researched
- [ ] Comparison with 5+ criteria
- [ ] Clear decision documented
- [ ] Plan for this week outlined

## Learning Resources

- [AWS Lambda vs ECS](https://aws.amazon.com/lambda/faqs/)
- [ECS Fargate](https://aws.amazon.com/fargate/)
- [Container vs Serverless](https://aws.amazon.com/blogs/compute/choosing-between-aws-lambda-and-ecs/)

## Deliverables

- `architecture-comparison.md`
- `week-6-decision.md`
- Decision rationale

**What You Have Now**: Same system + informed decision about next steps
