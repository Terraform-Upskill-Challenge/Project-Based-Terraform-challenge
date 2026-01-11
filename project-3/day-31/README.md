# Day 31: GitHub Actions - Frontend Deploy

## Learning Objectives

- Set up GitHub Actions for frontend deployment
- Configure IAM OIDC provider for GitHub
- Create workflow for automatic S3 sync
- Invalidate CloudFront cache
- Automate frontend deployments

## Prerequisites

- [ ] Completed Project 2
- [ ] GitHub repository set up
- [ ] Code pushed to GitHub
- [ ] Understanding of GitHub Actions

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-31-github-actions-frontend
```

### 3. Navigate to Your Project

```bash
cd project-3
# Continue from your Project 2 infrastructure
```

## Tasks

### Task 1: IAM OIDC Provider
- Create IAM OIDC provider for GitHub
- Create IAM role for GitHub Actions
- Configure trust relationship
- Grant necessary permissions (S3, CloudFront)

### Task 2: GitHub Actions Workflow
- Create workflow file: `.github/workflows/deploy-frontend.yml`
- Configure workflow to:
  - Trigger on push to main (website/ directory)
  - Sync files to S3
  - Invalidate CloudFront cache
- Use OIDC for authentication (no access keys!)

### Task 3: Test Deployment
- Update your resume
- Push to GitHub
- Verify automatic deployment
- Check CloudFront invalidation

### Task 4: Documentation
- Document the CI/CD flow
- Explain OIDC authentication
- Document workflow triggers

## Acceptance Criteria

- [ ] IAM OIDC provider configured
- [ ] GitHub Actions workflow file created
- [ ] Workflow successfully deploys on push
- [ ] CloudFront cache invalidated
- [ ] Process documented

## Learning Resources

- [GitHub Actions](https://docs.github.com/en/actions)
- [AWS IAM OIDC](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc.html)
- [GitHub OIDC with AWS](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services)

## Deliverables

- `.github/workflows/deploy-frontend.yml`
- `iam-github-actions.tf`
- `cicd-documentation.md`

**What You Have Now**: Resume updates deploy automatically!
