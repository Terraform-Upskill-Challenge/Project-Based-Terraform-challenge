# Day 11: Project Setup + S3 Bucket

## Learning Objectives

By the end of this day, you will:
- Set up the Cloud Resume project structure
- Configure remote state backend
- Create S3 bucket for static website hosting
- Enable versioning and configure bucket settings
- Establish project foundation

## Prerequisites

- [ ] Completed Project 1 (all 10 days)
- [ ] Remote state backend configured (S3 + DynamoDB from Day 4)
- [ ] AWS credentials configured
- [ ] Git repository forked and cloned
- [ ] Understanding of S3 static website hosting

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-11-project-setup-s3-bucket
```

### 3. Navigate to Project 2

```bash
cd project-2
mkdir cloud-resume
cd cloud-resume
```

### 4. Initialize Project Structure

Create the basic Terraform files for your project.

## Tasks

Your goal is to set up the foundation for the Cloud Resume platform.

### Task 1: Project Structure
- Create proper project structure:
  - `main.tf` - main resources
  - `providers.tf` - provider configuration
  - `variables.tf` - all variables
  - `backend.tf` - remote state configuration
  - `.gitignore` - exclude sensitive files
  - `README.md` - project documentation

### Task 2: Configure Backend
- Configure S3 backend in `backend.tf`
- Reference your backend bucket and DynamoDB table from Day 4
- Initialize with `terraform init`
- Verify state is stored remotely

### Task 3: Create S3 Bucket
- Create S3 bucket named `resume-[yourname]-frontend`
- Enable versioning on the bucket
- Configure for static website hosting:
  - Index document: `index.html`
  - Error document: `error.html`
- Set up variables for all configurable values:
  - Bucket name
  - Region
  - Tags
  - Website configuration

### Task 4: Variables and Validation
- Define all variables with:
  - Type constraints
  - Descriptions
  - Validation rules (where appropriate)
- Use best practices from Day 10

## Project Structure

Your structure should look like:

```
cloud-resume/
├── main.tf
├── providers.tf
├── variables.tf
├── backend.tf
├── .gitignore
└── README.md
```

## Acceptance Criteria

- [ ] Remote state configured and working
- [ ] S3 bucket created with website configuration
- [ ] Versioning enabled on bucket
- [ ] Variables defined with validation
- [ ] `.gitignore` excludes `.terraform/`, `*.tfstate`, `*.tfvars`
- [ ] Project structure follows best practices
- [ ] Code validates and formats correctly

## Learning Resources

### Official Documentation
- [AWS S3 Bucket Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)
- [S3 Static Website Hosting](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html)
- [S3 Bucket Versioning](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html)
- [Terraform Backend Configuration](https://www.terraform.io/docs/language/settings/backends/s3.html)

### Key Concepts to Research
- **S3 Static Website Hosting**: How it works
- **Bucket Versioning**: Why enable it
- **Bucket Naming**: Global uniqueness requirements
- **Remote State**: Using S3 backend in production

## Common Challenges

You might encounter:
- **Bucket name conflicts**: Ensure globally unique name
- **Backend configuration**: Verify bucket and table exist
- **State migration**: If migrating from local state
- **Permissions**: IAM permissions for S3 operations

## Deliverables

Submit the following:

1. **Code Files**:
   - All Terraform files (`main.tf`, `providers.tf`, `variables.tf`, `backend.tf`)
   - `.gitignore` file

2. **Documentation**:
   - `README.md` with project overview
   - Comments in code explaining configuration

3. **Verification**:
   - Screenshot of S3 bucket in AWS Console
   - Confirmation of remote state working
   - `terraform plan` output

## Key Takeaways

After completing this day, you should understand:
- How to structure a real-world Terraform project
- Importance of remote state in production
- S3 bucket configuration for static websites
- Project organization best practices

## Next Day Preview

Tomorrow (Day 12), you'll:
- Create your actual resume HTML/CSS/JS files
- Upload files to S3 using Terraform
- Set proper content types

---

**What You Have Now**: An S3 bucket ready to host files

**Let's build something real!** 🚀
