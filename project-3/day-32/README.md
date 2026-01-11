# Day 32: GitHub Actions - Infrastructure Deploy

## Learning Objectives

- Automate Terraform deployments
- Create workflows for plan and apply
- Configure secure backend credentials
- Integrate Terraform with CI/CD
- Follow infrastructure as code best practices

## Prerequisites

- [ ] Completed Day 31
- [ ] GitHub Actions set up
- [ ] Remote state backend configured

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-32-github-actions-infrastructure
```

### 3. Navigate to Your Project

```bash
cd project-3
# Continue from your Project 2 infrastructure
```

## Tasks

### Task 1: Terraform Plan Workflow
- Create workflow for `terraform plan` on PR
- Show plan output in PR comments (bonus)
- Validate Terraform code
- Check for formatting

### Task 2: Terraform Apply Workflow
- Create workflow for `terraform apply` on merge to main
- Configure backend credentials securely
- Use OIDC for authentication
- Add approval step (optional but recommended)

### Task 3: Security Configuration
- Configure secrets properly
- Never commit credentials
- Use OIDC instead of access keys
- Document security practices

### Task 4: Testing
- Test with a small infrastructure change
- Verify plan runs on PR
- Verify apply runs on merge
- Document the workflow

## Acceptance Criteria

- [ ] Plan runs automatically on PR
- [ ] Plan output visible (in PR or logs)
- [ ] Apply runs on merge
- [ ] Secrets properly configured
- [ ] Workflow documented

## Learning Resources

- [Terraform in CI/CD](https://www.terraform.io/docs/cloud/guides/recommended-practices/part1.html)
- [GitHub Actions for Terraform](https://github.com/hashicorp/setup-terraform)

## Deliverables

- `.github/workflows/terraform-plan.yml`
- `.github/workflows/terraform-apply.yml`
- `terraform-cicd.md`

**What You Have Now**: Infrastructure changes deploy via Git!
