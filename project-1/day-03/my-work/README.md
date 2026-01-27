# Day 03 - EC2 with Data Sources & Locals (Terraform)

## Objective
Create an EC2 instance using Terraform data sources to dynamically fetch:
- Current AWS Account ID
- Current AWS Region
- Latest Amazon Linux 2 AMI

Use locals to centralize common tags (DRY principle).

---

## Project Structure
day-03/
├── main.tf
├── data.tf
├── locals.tf
└── README.md

---

## Key Concepts

### 1) Data Sources vs Resources
**Data sources** are read-only and used to fetch information that already exists in AWS.
Examples:
- `aws_caller_identity` gets the current account ID
- `aws_region` gets the current region
- `aws_ami` finds the latest AMI

**Resources** create or manage infrastructure.
Example:
- `aws_instance` creates an EC2 instance

**Rule of thumb:**
- Use **data sources** to look up existing things
- Use **resources** to create/manage new things

---

### 2) Locals vs Variables
**Variables** are inputs that can change between environments (dev/test/prod).
Use variables when you want the user to provide values.

**Locals** are internal values calculated inside Terraform to avoid repetition and keep code clean.
Use locals when:
- you want to reuse a value many times
- you want to compute values (like a shared tags map)
- the value should not be overridden from outside

---

### 3) DRY (Don’t Repeat Yourself) Examples
- Common tags defined once in `locals.tf` and reused in `main.tf`
- Account ID and region fetched automatically using data sources
- Latest AMI fetched dynamically so the instance always uses an up-to-date Amazon Linux 2 image

---

## How to Run
From inside `day-03/`:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply


---
## Notes (Important)
- The AWS provider uses your configured AWS credentials and region (from AWS CLI config or environment variables).
- The AMI data source automatically finds the latest Amazon Linux 2 AMI in your region.
