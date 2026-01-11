# Day 7: Creating Your First Module

## Learning Objectives

By the end of this day, you will:
- Understand module structure and organization
- Create a reusable Terraform module
- Define module inputs and outputs
- Call modules from root configuration
- Apply DRY principles with modules

## Prerequisites

- [ ] Completed Day 6 successfully
- [ ] Understanding of Terraform functions
- [ ] Knowledge of S3 static website hosting
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
git checkout -b feat/day-07-creating-first-module
```

### 3. Navigate to Day 7

```bash
cd project-1/day-07
mkdir my-work
cd my-work
```

### 4. Review Concepts

Today you'll create a reusable module for S3 static website hosting and use it multiple times.

## Tasks

Your goal is to create a production-quality module and demonstrate reusability.

### Task 1: Create S3 Website Module
- Create a module in `modules/s3-website/`
- Module should provision S3 bucket configured for static website hosting
- Module inputs should include:
  - Bucket name
  - Index document (default: "index.html")
  - Error document (default: "error.html")
  - Tags (optional)
- Module outputs should include:
  - Bucket endpoint URL
  - Bucket ARN
  - Bucket name

### Task 2: Module Structure
- Organize module files:
  - `main.tf` - resources
  - `variables.tf` - inputs
  - `outputs.tf` - outputs
  - `README.md` - module documentation
- Follow Terraform module best practices

### Task 3: Use the Module
- Call the module twice from root `main.tf`:
  - Once for "dev" environment
  - Once for "prod" environment
- Use different configurations for each
- Verify both websites are accessible

### Task 4: Documentation
- Create module README with:
  - Purpose and description
  - Usage examples
  - Input variables
  - Outputs
  - Requirements
- Create `module-design.md` explaining:
  - When to create modules
  - Module design principles
  - Best practices

## Project Structure

Your final structure should look like:

```
day-07/
├── modules/
│   └── s3-website/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── README.md
├── main.tf (calls the module)
└── module-design.md
```

## Acceptance Criteria

- [ ] Module has clear inputs and outputs
- [ ] Module README documents usage
- [ ] Module successfully called twice with different configs
- [ ] Both websites accessible
- [ ] Design doc explains when to create modules
- [ ] Code follows module best practices

## Learning Resources

### Official Documentation
- [Terraform Modules](https://www.terraform.io/docs/language/modules/index.html)
- [Module Structure](https://www.terraform.io/docs/language/modules/develop/index.html)
- [Module Composition](https://www.terraform.io/docs/language/modules/develop/composition.html)
- [Module Best Practices](https://www.terraform.io/docs/language/modules/develop/index.html#standard-module-structure)

### Key Concepts to Research
- **Module Structure**: Standard directory layout
- **Module Inputs**: Variables in modules
- **Module Outputs**: Exposing module values
- **Module Reusability**: DRY principles
- **Module Versioning**: Using version constraints
- **When to Module**: Decision criteria

### Video Resources
- HashiCorp Learn: [Modules](https://learn.hashicorp.com/tutorials/terraform/modules)
- Terraform Modules Deep Dive

## Common Challenges

You might encounter:
- **Module path issues**: Understanding module source paths
- **Variable scope**: Module variables vs root variables
- **Output dependencies**: Module outputs and dependencies
- **Module versioning**: Using Git or registry modules

## Deliverables

Submit the following:

1. **Code Files**:
   - `modules/s3-website/` (complete module)
   - `main.tf` (module calls)

2. **Documentation**:
   - `modules/s3-website/README.md` (module documentation)
   - `module-design.md` (design decisions and best practices)

3. **Demonstration**:
   - Show module called twice
   - Show both websites working
   - Show module outputs

## Key Takeaways

After completing this day, you should understand:
- How to structure reusable modules
- Module input/output contracts
- When to create modules
- Module best practices

## Next Day Preview

Tomorrow (Day 8), you'll learn about:
- Managing multiple environments
- Workspaces vs directory structure
- Environment-specific configurations

---

**Remember**: Destroy your resources when done!

**Modules make code reusable!** 🚀
