# Day 15: Documentation & Code Quality

## Learning Objectives

- Write comprehensive documentation
- Create architecture diagrams
- Validate and format code
- Document learnings
- Prepare for Week 4

## Prerequisites

- [ ] Completed Days 11-14
- [ ] Working static resume website
- [ ] Understanding of all components

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-15-documentation-code-quality
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Comprehensive README
- Write README with:
  - Project purpose
  - Prerequisites
  - Setup instructions
  - Architecture overview
  - Outputs and endpoints
  - How to use

### Task 2: Architecture Documentation
- Create `ARCHITECTURE.md` explaining:
  - All resources and why they exist
  - Data flow
  - Component relationships
- Create architecture diagram (hand-drawn/photographed is fine)
  - Show S3, CloudFront, relationships

### Task 3: Code Quality
- Run `terraform fmt -recursive`
- Run `terraform validate`
- Fix any issues
- Ensure code follows best practices

### Task 4: Learnings Document
- Create `week-3-learnings.md` with:
  - 5+ key insights
  - Challenges faced
  - Solutions found
  - Best practices learned

## Acceptance Criteria

- [ ] README includes all required sections
- [ ] Architecture diagram shows components
- [ ] Code properly formatted and validated
- [ ] Learnings document with 5+ insights
- [ ] Ready for Week 4

## Learning Resources

- [Terraform Format](https://www.terraform.io/docs/cli/commands/fmt.html)
- [Terraform Validate](https://www.terraform.io/docs/cli/commands/validate.html)
- Documentation best practices

## Deliverables

- `README.md` (comprehensive)
- `ARCHITECTURE.md`
- `architecture-diagram.png`
- `week-3-learnings.md`
- Formatted and validated code

**What You Have Now**: A well-documented, working static resume website

**Submission**: PR "Week 3 - [Your Name] - Static Resume Complete"
