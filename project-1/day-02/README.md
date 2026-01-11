# Day 2: Variables & Outputs

## Learning Objectives

By the end of this day, you will:
- Understand how to use variables to make code reusable
- Learn to define outputs to expose resource information
- Separate configuration from code using `terraform.tfvars`
- Understand variable types and constraints
- Practice changing infrastructure by modifying variables

## Prerequisites

- [ ] Completed Day 1 successfully
- [ ] Understanding of basic Terraform syntax
- [ ] Knowledge of the init/plan/apply workflow
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
git checkout -b feat/day-02-variables-and-outputs
```

### 3. Navigate to Day 2

```bash
cd project-1/day-02
mkdir my-work
cd my-work
```

### 4. Review Day 1 Concepts

You'll be recreating the Day 1 S3 bucket, but this time using variables for everything.

## Tasks

Your goal is to make your Terraform code reusable and configurable.

### Task 1: Create Variable-Based S3 Bucket
- Recreate the Day 1 bucket using variables for:
  - Bucket name
  - AWS region
  - Tags (at least 3 tags)
- Define variables in `variables.tf` with:
  - Type constraints
  - Descriptions
  - Default values (where appropriate)

### Task 2: Create Outputs
- Output the bucket ARN
- Output the bucket name
- Output the bucket region
- Define outputs in `outputs.tf` with descriptions

### Task 3: Use terraform.tfvars
- Create `terraform.tfvars` with your specific values
- Add `terraform.tfvars` to `.gitignore` (create this file)
- Test changing the region by editing only `terraform.tfvars`

### Task 4: Experimentation
- Change the region via `terraform.tfvars` and reapply
- Observe how Terraform handles the change
- Document the behavior

## Project Structure

Your final structure should look like:

```
day-02/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── .gitignore
└── README.md
```

## Acceptance Criteria

- [ ] At least 3 variables defined with descriptions
- [ ] All variables have type constraints
- [ ] At least 3 outputs defined with descriptions
- [ ] `terraform.tfvars` file created and used
- [ ] Can change region by editing only `terraform.tfvars`
- [ ] `.gitignore` excludes sensitive files
- [ ] README explains variables vs hardcoding

## Learning Resources

### Official Documentation
- [Terraform Variables](https://www.terraform.io/docs/language/values/variables.html)
- [Terraform Outputs](https://www.terraform.io/docs/language/values/outputs.html)
- [Variable Types](https://www.terraform.io/docs/language/values/variables.html#type-constraints)
- [Input Variables Best Practices](https://www.terraform.io/docs/language/values/variables.html#best-practices)

### Key Concepts to Research
- **Variable Types**: string, number, bool, list, map, object, any
- **Variable Validation**: How to validate variable inputs
- **Sensitive Variables**: How to mark variables as sensitive
- **Output Dependencies**: How outputs reference resources
- **Variable Precedence**: Order of variable resolution

### Video Resources
- HashiCorp Learn: [Input Variables](https://learn.hashicorp.com/tutorials/terraform/variables)
- Terraform Variables Deep Dive

## Common Challenges

You might encounter:
- **Variable not found**: Check variable declaration and reference syntax
- **Type mismatches**: Ensure variable types match usage
- **Output dependencies**: Outputs must reference valid resource attributes
- **tfvars not loading**: Check file naming and location

## Deliverables

Submit the following:

1. **Code Files**: 
   - `main.tf`
   - `variables.tf`
   - `outputs.tf`
   - `terraform.tfvars.example` (template without real values)
   - `.gitignore`

2. **Documentation**: README.md explaining:
   - Why use variables instead of hardcoding
   - How variable precedence works
   - When to use outputs
   - Best practices for variable organization

3. **Demonstration**: 
   - Show changing region via `terraform.tfvars`
   - Show the outputs after apply

## Key Takeaways

After completing this day, you should understand:
- The importance of separating configuration from code
- How variables make code reusable
- How outputs expose information to users
- Variable type system and validation

## Next Day Preview

Tomorrow (Day 3), you'll learn about:
- Data sources to reference existing resources
- Locals to compute values
- DRY (Don't Repeat Yourself) principles

---

**Remember**: Destroy your resources when done!

**Keep learning!** 🚀
