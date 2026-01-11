# Day 3: Data Sources & Locals

## Learning Objectives

By the end of this day, you will:
- Understand data sources and when to use them
- Learn to use locals for computed values
- Reference existing AWS resources
- Apply DRY (Don't Repeat Yourself) principles
- Create common tag patterns using locals

## Prerequisites

- [ ] Completed Day 2 successfully
- [ ] Understanding of variables and outputs
- [ ] Basic knowledge of AWS services (EC2, AMIs)
- [ ] Working directory set up

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-03-data-sources-and-locals
```

### 3. Navigate to Day 3

```bash
cd project-1/day-03
mkdir my-work
cd my-work
```

### 4. Review Concepts

Today you'll create an EC2 instance using data sources to find the latest AMI and current AWS account information.

## Tasks

Your goal is to use data sources and locals to make your code more dynamic and maintainable.

### Task 1: Use Data Sources
- Use `aws_caller_identity` data source to get current AWS account ID
- Use `aws_region` data source to get current AWS region
- Use `aws_ami` data source to find the latest Amazon Linux 2 AMI
- Reference these in your resources

### Task 2: Create Locals
- Define common tags using locals:
  - Owner (your name/email)
  - Environment (e.g., "Learning")
  - ManagedBy ("Terraform")
- Create a `locals.tf` file for organization

### Task 3: Create EC2 Instance
- Create a t2.micro EC2 instance
- Use the AMI from the data source
- Apply all common tags from locals
- Use the account ID and region from data sources in tags or naming

### Task 4: Documentation
- Explain the difference between data sources and resources
- Document when to use locals vs variables
- Show examples of DRY principles applied

## Project Structure

Your final structure should look like:

```
day-03/
├── main.tf
├── data.tf
├── locals.tf
└── README.md
```

## Acceptance Criteria

- [ ] Data sources find region, account ID, and AMI successfully
- [ ] Locals define common tags
- [ ] EC2 instance created (t2.micro)
- [ ] All resources tagged via locals
- [ ] README explains data sources vs resources
- [ ] Code demonstrates DRY principles

## Learning Resources

### Official Documentation
- [Terraform Data Sources](https://www.terraform.io/docs/language/data-sources/index.html)
- [Terraform Locals](https://www.terraform.io/docs/language/values/locals.html)
- [AWS AMI Data Source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami)
- [AWS Caller Identity Data Source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity)
- [AWS Region Data Source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region)

### Key Concepts to Research
- **Data Sources vs Resources**: When to use each
- **Locals vs Variables**: Understanding the difference
- **AMI Filtering**: How to find the right AMI
- **DRY Principles**: Reducing code duplication
- **Tagging Strategies**: Common AWS tagging patterns

### Video Resources
- HashiCorp Learn: [Data Sources](https://learn.hashicorp.com/tutorials/terraform/data-sources)
- AWS EC2 and AMI concepts

## Common Challenges

You might encounter:
- **AMI not found**: Check region and filter criteria
- **Data source dependencies**: Understanding when data sources are evaluated
- **Locals scope**: Understanding where locals can be used
- **Tag merging**: How to combine multiple tag sources

## Deliverables

Submit the following:

1. **Code Files**:
   - `main.tf` (EC2 instance)
   - `data.tf` (all data sources)
   - `locals.tf` (common tags and computed values)

2. **Documentation**: README.md explaining:
   - Difference between data sources and resources
   - When to use locals vs variables
   - How data sources help avoid hardcoding
   - Examples of DRY principles in your code

3. **Demonstration**:
   - Show EC2 instance created with correct AMI
   - Show tags applied from locals
   - Show data source outputs

## Key Takeaways

After completing this day, you should understand:
- How to reference existing AWS resources
- The power of data sources for dynamic configurations
- How locals help organize and compute values
- DRY principles in infrastructure code

## Next Day Preview

Tomorrow (Day 4), you'll learn about:
- State management and why it's critical
- Remote backends (S3 + DynamoDB)
- State locking
- State migration

---

**Important**: Destroy everything at the end of the day! `terraform destroy`

**Great progress!** 🚀
