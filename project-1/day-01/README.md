# Day 1: Your First Terraform Resource

## Learning Objectives

By the end of this day, you will:
- Understand the basic Terraform workflow (init, plan, apply, destroy)
- Create your first AWS resource (S3 bucket)
- Understand provider configuration
- Learn about state files and why they matter
- Practice the complete Terraform lifecycle

## Prerequisites

- [✅] Terraform installed (`terraform version`)
- [✅] AWS CLI configured (`aws sts get-caller-identity`)
- [✅] AWS account with appropriate permissions (S3 access)
- [✅] Git repository forked and cloned locally
- [✅] Text editor ready (VS Code with Terraform extension recommended)

## Getting Started

### 1. Fork and Clone the Repository

If you haven't already:

```bash
# Fork the repository on GitHub first, then:
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
# Create a branch for this day's work
git checkout -b feat/day-01-first-terraform-resource
```

### 3. Navigate to Day 1

```bash
# From the bootcamp root directory
cd project-1/day-01
mkdir my-work
cd my-work
```

### 4. Initialize Your First Terraform Project

Create a `main.tf` file and start with the AWS provider configuration.

## Tasks

Your goal is to create a single S3 bucket and understand the Terraform workflow.

### Task 1: Create S3 Bucket
- Create an S3 bucket with a unique name (format: `terraform-practice-[yourname]-[random]`)
- Add a tag: `Learning = "Day1"`
- Use the AWS provider

### Task 2: Execute Terraform Workflow
- Run `terraform init` - understand what happens
- Run `terraform plan` - review the execution plan
- Run `terraform apply` - create the resource
- Run `terraform show` - inspect the state
- Run `terraform destroy` - clean up resources

### Task 3: Documentation
- Create a README.md explaining:
  - What `terraform init` does
  - What `terraform plan` shows
  - What `terraform apply` does
  - What the state file contains
  - Why state files are important

## Project Structure

Your final structure should look like:

```
day-01/
├── main.tf
├── README.md
└── screenshots/
    └── bucket-created.png
```

## Acceptance Criteria

- [ ] S3 bucket created successfully
- [ ] Bucket has the required tag
- [ ] Screenshot of AWS console showing the bucket
- [ ] Output of `terraform plan` saved or documented
- [ ] README explains the Terraform workflow
- [ ] All resources destroyed at the end

## Learning Resources

### Official Documentation
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)
- [Terraform Getting Started Guide](https://learn.hashicorp.com/tutorials/terraform/aws-build)
- [Terraform Commands](https://www.terraform.io/docs/cli/commands/index.html)

### Key Concepts to Research
- **Providers**: What are they? How do they work?
- **Resources**: How to define AWS resources in Terraform
- **State**: What is Terraform state? Why is it critical?
- **Workflow**: init → plan → apply → destroy cycle

### Video Resources
- HashiCorp Learn: [Terraform Basics](https://learn.hashicorp.com/terraform)
- AWS S3 Service Overview (understand what you're creating)

## Common Challenges

You might encounter:
- **Bucket name conflicts**: S3 bucket names must be globally unique
- **Credential errors**: Ensure AWS credentials are properly configured
- **Permission errors**: Your AWS user needs S3 permissions
- **State file confusion**: Understand what `.tfstate` contains

## Deliverables

Submit the following:

1. **Code**: Your `main.tf` file
2. **Screenshot**: AWS Console showing your S3 bucket
3. **Documentation**: README.md explaining the Terraform workflow
4. **Plan Output**: Save the output of `terraform plan` (optional but recommended)
5. **Learning Notes**: Document any issues you encountered and how you solved them

## Key Takeaways

After completing this day, you should understand:
- The declarative nature of Terraform
- The importance of planning before applying
- What state files store and why they're critical
- The basic Terraform command structure

## Next Day Preview

Tomorrow (Day 2), you'll learn about:
- Variables to make your code reusable
- Outputs to expose resource information
- Separating configuration from code

---

**Remember**: Destroy your resources when done! `terraform destroy`

**Good luck!** 🚀
