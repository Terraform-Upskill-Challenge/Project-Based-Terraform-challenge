# Day 12: Upload Resume Files

## Learning Objectives

- Create HTML/CSS/JS resume files
- Upload files to S3 using Terraform
- Set proper content types
- Use `for_each` for multiple file uploads

## Prerequisites

- [ ] Completed Day 11 (S3 bucket created)
- [ ] Basic HTML/CSS knowledge
- [ ] Understanding of S3 object uploads

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-12-upload-resume-files
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

## Tasks

### Task 1: Create Resume Files
- Create `website/index.html` with your actual resume
- Create `website/styles.css` for professional styling
- Create `website/script.js` (empty for now, will use later)
- Add profile photo if desired

### Task 2: Upload Files via Terraform
- Use `aws_s3_object` resource to upload files
- Use `for_each` to upload all files in `website/` directory
- Set proper content types:
  - HTML: `text/html`
  - CSS: `text/css`
  - JS: `application/javascript`
  - Images: `image/jpeg`, `image/png`, etc.

### Task 3: Outputs
- Add output for S3 website endpoint
- Document the endpoint URL

## Acceptance Criteria

- [ ] HTML resume created with your actual info
- [ ] CSS makes it look professional
- [ ] All files uploaded via Terraform
- [ ] Content types set correctly
- [ ] Can access website via S3 endpoint (will be blocked - we fix tomorrow)

## Learning Resources

- [AWS S3 Object Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object)
- [Content Types Reference](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)

## Deliverables

- Code: `main.tf` with S3 object resources
- Files: `website/` directory with HTML/CSS/JS
- Output: S3 website endpoint

**What You Have Now**: Resume files in S3, but not publicly accessible
