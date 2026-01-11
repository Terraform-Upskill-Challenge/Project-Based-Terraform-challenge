# Day 5: Count, For_Each, and Conditionals

## Learning Objectives

By the end of this day, you will:
- Create multiple resources using `count`
- Create multiple resources using `for_each`
- Understand when to use `count` vs `for_each`
- Use conditional expressions in Terraform
- Apply meta-arguments for dynamic resource creation

## Prerequisites

- [ ] Completed Day 4 successfully
- [ ] Understanding of state management
- [ ] Remote backend configured (or local state is fine for this exercise)
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
git checkout -b feat/day-05-count-foreach-conditionals
```

### 3. Navigate to Day 5

```bash
cd project-1/day-05
mkdir my-work
cd my-work
```

### 4. Review Concepts

Today you'll create multiple S3 buckets using different approaches and learn about conditionals.

## Tasks

Your goal is to create multiple resources dynamically and conditionally.

### Task 1: Create Resources with `count`
- Create 3 S3 buckets using `count`:
  - `dev-bucket-[yourname]`
  - `staging-bucket-[yourname]`
  - `prod-bucket-[yourname]`
- Use a list variable to define bucket names
- Reference resources using `resource_type.name[0]`, `[1]`, `[2]`

### Task 2: Create Resources with `for_each`
- Create 3 different S3 buckets using `for_each`:
  - Use a map with bucket configurations
  - Each bucket should have different settings (tags, versioning, etc.)
  - Reference resources using `resource_type.name["key"]`

### Task 3: Conditional Logic
- Add a boolean variable `enable_versioning`
- Conditionally enable versioning on buckets based on this variable
- Use conditional expressions for tags:
  - If environment is "prod", add extra tags (e.g., `Backup = "Required"`)
  - Otherwise, use standard tags

### Task 4: Comparison and Documentation
- Document the differences between `count` and `for_each`
- Explain when to use each approach
- Show examples of conditional expressions
- Create a decision matrix for choosing between them

## Project Structure

Your final structure should look like:

```
day-05/
├── main.tf
├── variables.tf
└── README.md
```

## Acceptance Criteria

- [ ] 6 buckets total created (3 via count, 3 via for_each)
- [ ] Versioning toggles based on variable
- [ ] Prod buckets have extra tags via conditionals
- [ ] README explains count vs for_each
- [ ] Decision criteria documented
- [ ] All resources destroyed at end

## Learning Resources

### Official Documentation
- [Terraform Count](https://www.terraform.io/docs/language/meta-arguments/count.html)
- [Terraform For_Each](https://www.terraform.io/docs/language/meta-arguments/for_each.html)
- [Conditional Expressions](https://www.terraform.io/docs/language/expressions/conditionals.html)
- [Count vs For_Each](https://www.terraform.io/docs/language/meta-arguments/count.html#when-to-use-for_each-instead-of-count)

### Key Concepts to Research
- **Count Meta-Argument**: Creating multiple instances with index
- **For_Each Meta-Argument**: Creating multiple instances with map/set
- **Conditional Expressions**: `condition ? true_val : false_val`
- **Resource Addressing**: How to reference resources created with count/for_each
- **When to Use Each**: Decision criteria

### Video Resources
- HashiCorp Learn: [Count and For_Each](https://learn.hashicorp.com/tutorials/terraform/count)
- Terraform Meta-Arguments Deep Dive

## Common Challenges

You might encounter:
- **Count limitations**: Can't use count with dynamic values
- **For_each with lists**: Need to convert to set or use toset()
- **Resource addressing**: Understanding index vs key syntax
- **Conditional syntax**: Proper ternary operator usage

## Deliverables

Submit the following:

1. **Code Files**:
   - `main.tf` (resources with count and for_each)
   - `variables.tf` (all variables)

2. **Documentation**: README.md explaining:
   - Difference between count and for_each
   - When to use count vs for_each
   - How conditional expressions work
   - Examples of each approach
   - Decision matrix for choosing between them

3. **Demonstration**:
   - Show 6 buckets created
   - Show versioning toggled via variable
   - Show conditional tags applied

## Key Takeaways

After completing this day, you should understand:
- How to create multiple resources efficiently
- When to use count vs for_each
- How to apply conditional logic in Terraform
- Meta-arguments for dynamic resource creation

## Next Day Preview

Tomorrow (Day 6), you'll learn about:
- Terraform built-in functions
- String manipulation functions
- JSON encoding/decoding
- Template files

---

**Important**: Destroy all resources! We start the REAL project next week.

**Excellent work!** 🚀
