# Day 9: Debugging and Troubleshooting

## Learning Objectives

By the end of this day, you will:
- Debug broken Terraform configurations
- Use `terraform console` for testing expressions
- Use `TF_LOG` for detailed debugging
- Understand common Terraform errors
- Create a troubleshooting checklist

## Prerequisites

- [ ] Completed Day 8 successfully
- [ ] Understanding of workspaces and environments
- [ ] Experience with Terraform errors
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
git checkout -b feat/day-09-debugging-troubleshooting
```

### 3. Navigate to Day 9

```bash
cd project-1/day-09
mkdir my-work
cd my-work
```

### 4. Review Concepts

Today you'll fix intentionally broken configurations and learn debugging techniques.

## Tasks

Your goal is to become proficient at debugging Terraform issues independently.

### Task 1: Fix Broken Configurations
- Fix 5 intentionally broken Terraform configs
- Each config has a different type of error:
  1. Syntax error
  2. Resource dependency issue
  3. Variable type mismatch
  4. Invalid resource attribute
  5. State inconsistency
- Document the error and fix for each

### Task 2: Use Terraform Console
- Use `terraform console` to test expressions
- Test variable references
- Test function calls
- Test data source queries
- Validate expressions before using in code

### Task 3: Debug Logging
- Use `TF_LOG=DEBUG` to see detailed logs
- Use `TF_LOG_PATH` to save logs to file
- Analyze log output to understand Terraform behavior
- Identify useful log patterns

### Task 4: Create Troubleshooting Guide
- Document debugging process for each fix
- Create personal troubleshooting checklist
- Include common errors and solutions
- Add debugging techniques learned

## Project Structure

Your final structure should look like:

```
day-09/
├── broken-code/
│   ├── broken-1.tf
│   ├── broken-2.tf
│   ├── broken-3.tf
│   ├── broken-4.tf
│   └── broken-5.tf
├── fixed-code/
│   └── (fixed versions)
├── debugging-techniques.md
└── common-errors.md
```

## Acceptance Criteria

- [ ] All 5 broken configs fixed
- [ ] Documented debugging process for each
- [ ] Used console and debug logs
- [ ] Created reusable troubleshooting guide
- [ ] Common errors documented with solutions

## Learning Resources

### Official Documentation
- [Terraform Console](https://www.terraform.io/docs/cli/commands/console.html)
- [Debugging Terraform](https://www.terraform.io/docs/cli/debugging.html)
- [Terraform Logging](https://www.terraform.io/docs/internals/debugging.html)
- [Error Messages](https://www.terraform.io/docs/cli/commands/index.html#error-messages)

### Key Concepts to Research
- **Terraform Console**: Interactive expression evaluation
- **Debug Logging**: Understanding Terraform internals
- **Common Errors**: Syntax, type, dependency errors
- **State Errors**: Drift, locking, corruption
- **Provider Errors**: AWS API errors and handling

### Video Resources
- HashiCorp Learn: [Debugging](https://learn.hashicorp.com/tutorials/terraform/debugging)
- Terraform Troubleshooting Techniques

## Common Challenges

You might encounter:
- **Vague error messages**: Learning to interpret Terraform errors
- **State issues**: Understanding state-related problems
- **Dependency cycles**: Circular dependencies
- **Provider errors**: AWS API rate limits and errors

## Deliverables

Submit the following:

1. **Code Files**:
   - `broken-code/` (original broken configs)
   - `fixed-code/` (fixed versions)

2. **Documentation**:
   - `debugging-techniques.md` (debugging process for each fix)
   - `common-errors.md` (troubleshooting checklist with common errors and solutions)

3. **Demonstration**:
   - Show console usage
   - Show debug log analysis
   - Show fixes applied

## Key Takeaways

After completing this day, you should understand:
- How to systematically debug Terraform issues
- Tools available for debugging
- Common error patterns and solutions
- How to use logs effectively

## Next Day Preview

Tomorrow (Day 10), you'll learn about:
- Terraform best practices
- Code quality and validation
- Naming conventions
- Style guides

---

**Remember**: Destroy your resources when done!

**Debugging is a crucial skill!** 🚀
