# Day 8: Workspaces vs Directory Structure

## Learning Objectives

By the end of this day, you will:
- Understand Terraform workspaces
- Learn directory-based environment management
- Compare workspace vs directory approaches
- Choose the right strategy for multi-environment
- Implement both approaches

## Prerequisites

- [ ] Completed Day 7 successfully
- [ ] Understanding of modules
- [ ] Knowledge of multi-environment patterns
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
git checkout -b feat/day-08-workspaces-vs-directories
```

### 3. Navigate to Day 8

```bash
cd project-1/day-08
mkdir my-work
cd my-work
```

### 4. Review Concepts

Today you'll implement the same infrastructure using two different approaches and compare them.

## Tasks

Your goal is to understand different strategies for managing multiple environments.

### Task 1: Workspace Approach
- Create infrastructure using Terraform workspaces
- Create workspaces: `dev`, `staging`, `prod`
- Use `terraform workspace select` to switch
- Use `terraform.workspace` to reference current workspace
- Create environment-specific `tfvars` files:
  - `dev.tfvars`
  - `prod.tfvars`
- Deploy to multiple workspaces

### Task 2: Directory Approach
- Create same infrastructure using separate directories
- Structure:
  ```
  directory-approach/
  ├── dev/
  │   └── main.tf
  └── prod/
      └── main.tf
  ```
- Each directory has its own state
- Use shared modules if needed
- Deploy to multiple environments

### Task 3: Comparison
- Test both approaches
- Document pros and cons for:
  - State management
  - Code duplication
  - Ease of use
  - Team collaboration
  - CI/CD integration
  - Error isolation
- Create comparison matrix

### Task 4: Recommendation
- Choose one approach for the main project
- Document your decision
- Explain why you chose it
- Create guidelines for future projects

## Project Structure

Your final structure should look like:

```
day-08/
├── workspace-approach/
│   ├── main.tf
│   ├── dev.tfvars
│   └── prod.tfvars
├── directory-approach/
│   ├── dev/
│   │   └── main.tf
│   └── prod/
│       └── main.tf
└── comparison.md
```

## Acceptance Criteria

- [ ] Both approaches successfully deployed
- [ ] Can switch between environments easily
- [ ] Comparison document with 5+ criteria
- [ ] Clear recommendation for main project
- [ ] Understanding of workspace limitations
- [ ] Understanding of directory approach benefits

## Learning Resources

### Official Documentation
- [Terraform Workspaces](https://www.terraform.io/docs/language/state/workspaces.html)
- [Workspace Commands](https://www.terraform.io/docs/cli/commands/workspace/index.html)
- [Backend Workspaces](https://www.terraform.io/docs/language/state/workspaces.html#using-workspaces)

### Key Concepts to Research
- **Workspaces**: State isolation within same backend
- **Directory Structure**: Separate state per directory
- **State Isolation**: Why it matters
- **Code Reusability**: Sharing code across environments
- **CI/CD Integration**: How each approach works with pipelines
- **Workspace Limitations**: When workspaces aren't enough

### Video Resources
- HashiCorp Learn: [Workspaces](https://learn.hashicorp.com/tutorials/terraform/state-workspaces)
- Multi-Environment Strategies

## Common Challenges

You might encounter:
- **Workspace confusion**: Workspaces don't change backend config
- **State mixing**: Accidentally using wrong workspace
- **Code duplication**: Managing duplicate code in directories
- **Backend configuration**: Each directory needs backend config

## Deliverables

Submit the following:

1. **Code Files**:
   - `workspace-approach/` (workspace implementation)
   - `directory-approach/` (directory implementation)

2. **Documentation**: `comparison.md` with:
   - Pros and cons of each approach
   - Comparison matrix (5+ criteria)
   - Use cases for each
   - Clear recommendation
   - Rationale for choice

3. **Demonstration**:
   - Show workspace switching
   - Show directory-based deployment
   - Show both environments working

## Key Takeaways

After completing this day, you should understand:
- Workspaces provide state isolation but have limitations
- Directory structure is often preferred for production
- Each approach has trade-offs
- Choose based on team size and requirements

## Next Day Preview

Tomorrow (Day 9), you'll learn about:
- Debugging Terraform configurations
- Troubleshooting common errors
- Using terraform console
- Debug logging

---

**Remember**: Destroy your resources when done!

**Choose the right approach for your needs!** 🚀
