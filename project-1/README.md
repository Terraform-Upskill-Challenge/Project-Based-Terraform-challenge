# Project 1: Terraform Foundations

## Overview

**Duration**: 2 Weeks (Days 1-10)  
**Goal**: Build muscle memory with Terraform syntax and core concepts through small, disposable exercises.

These two weeks are about learning Terraform fundamentals. We're building skills, not production infrastructure yet. Each day introduces new concepts that you'll practice with small exercises.

## Learning Path

```
Week 1: Core Concepts
├── Day 1: Your First Terraform Resource
├── Day 2: Variables & Outputs
├── Day 3: Data Sources & Locals
├── Day 4: State Management
└── Day 5: Count, For_Each, and Conditionals

Week 2: Functions, Modules, and Workspaces
├── Day 6: Built-in Functions
├── Day 7: Creating Your First Module
├── Day 8: Workspaces vs Directory Structure
├── Day 9: Debugging and Troubleshooting
└── Day 10: Terraform Best Practices
```

## Prerequisites

Before starting Project 1, ensure you have:

- [ ] AWS Account created and active
- [ ] AWS CLI installed and configured (`aws --version`)
- [ ] AWS credentials configured (`aws sts get-caller-identity` should work)
- [ ] Terraform installed (`terraform version`)
- [ ] Git installed (`git --version`)
- [ ] Text editor (VS Code recommended with Terraform extension)
- [ ] Basic understanding of cloud computing concepts

## Getting Started

### 1. Fork the Repository

```bash
# Fork the repository on GitHub first, then:
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Set Up Your Workspace

```bash
# Navigate to Project 1
cd project-1

# Create your working directory
mkdir my-work
cd my-work
```

### 3. Start with Day 1

Each day has its own folder with:
- `README.md` - Learning objectives, tasks, resources, and deliverables
- Example structure (if applicable)
- Resources for learning

```bash
cd ../day-01
# Read the README.md and follow the instructions
```

## Important Notes

### Resource Cleanup

**CRITICAL**: After each day's exercises, **always destroy your resources** to avoid AWS costs:

```bash
terraform destroy
```

### State Management

- Days 1-3: Use local state (default)
- Day 4+: Learn remote state with S3 backend
- Never commit `.tfstate` files to Git

### Cost Awareness

- Use free tier eligible resources when possible (t2.micro, S3, etc.)
- Always destroy resources after completing exercises
- Monitor AWS Cost Explorer regularly
- Set up billing alerts in AWS

## Daily Workflow

1. **Read** the day's README.md
2. **Research** the concepts using provided resources
3. **Build** the assigned infrastructure
4. **Test** your implementation
5. **Document** your learnings
6. **Destroy** resources
7. **Submit** deliverables (if required)

## Deliverables

At the end of Project 1, you should have:

- [ ] 10 completed day exercises
- [ ] Understanding of core Terraform concepts
- [ ] Ability to write reusable Terraform code
- [ ] Knowledge of debugging techniques
- [ ] Personal Terraform style guide
- [ ] Troubleshooting checklist

## Resources

### Official Documentation
- [Terraform Documentation](https://www.terraform.io/docs)
- [AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Terraform Language Documentation](https://www.terraform.io/docs/language)

### Recommended Reading
- **Terraform: Up & Running** by Yevgeniy Brikman
- [HashiCorp Learn](https://learn.hashicorp.com/terraform)

### Community
- [Terraform Community Forum](https://discuss.hashicorp.com/c/terraform-core)
- [r/Terraform](https://www.reddit.com/r/Terraform/)

## Next Steps

After completing Project 1, you'll move to **Project 2: Cloud Resume Platform**, where you'll build a real-world application using all the concepts you've learned.

---

**Remember**: The goal is to learn by doing, breaking things, and fixing them. Don't be afraid to experiment!

**Let's build a solid foundation!** 🚀
