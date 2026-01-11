# Day 6: Built-in Functions

## Learning Objectives

By the end of this day, you will:
- Use Terraform's built-in function library
- Manipulate strings, lists, and maps
- Encode/decode JSON
- Use template files
- Create dynamic configurations with functions

## Prerequisites

- [ ] Completed Day 5 successfully
- [ ] Understanding of count, for_each, and conditionals
- [ ] Basic knowledge of JSON
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
git checkout -b feat/day-06-built-in-functions
```

### 3. Navigate to Day 6

```bash
cd project-1/day-06
mkdir my-work
cd my-work
```

### 4. Review Concepts

Today you'll use Terraform functions to transform data and create dynamic configurations.

## Tasks

Your goal is to demonstrate proficiency with Terraform's function library.

### Task 1: JSON Encoding
- Create an IAM policy using `jsonencode()`
- Policy should allow S3 read access
- Make the policy readable and well-formatted
- Use variables for bucket names in the policy

### Task 2: Template Files
- Create a userdata script template for EC2
- Use `templatefile()` to render the template
- Template should include:
  - Dynamic values (instance name, region)
  - Conditional logic
- Apply the userdata to an EC2 instance

### Task 3: List and Map Functions
- Use `concat()` to combine multiple lists
- Use `merge()` to combine multiple maps
- Demonstrate with tags or security group rules
- Show how to add/remove elements

### Task 4: Lookup and Defaults
- Use `lookup()` for safe map access with defaults
- Create a configuration map with environment-specific values
- Use lookup to get values with fallbacks
- Handle missing keys gracefully

### Task 5: String Functions and Random IDs
- Use `random_id` resource to generate unique identifiers
- Use string interpolation with functions:
  - `upper()`, `lower()`, `title()`
  - `substr()`, `replace()`
- Create unique resource names using functions

## Project Structure

Your final structure should look like:

```
day-06/
├── main.tf
├── functions-practice.tf
├── templates/
│   └── userdata.sh.tpl
└── README.md
```

## Acceptance Criteria

- [ ] At least 5 different functions demonstrated
- [ ] IAM policy JSON is readable and valid
- [ ] Template file successfully rendered
- [ ] List and map functions used effectively
- [ ] Lookup with defaults demonstrated
- [ ] String manipulation shown
- [ ] README documents each function with use case

## Learning Resources

### Official Documentation
- [Terraform Functions](https://www.terraform.io/docs/language/functions/index.html)
- [String Functions](https://www.terraform.io/docs/language/functions/index.html#string-functions)
- [Collection Functions](https://www.terraform.io/docs/language/functions/index.html#collection-functions)
- [Encoding Functions](https://www.terraform.io/docs/language/functions/index.html#encoding-functions)
- [Templatefile Function](https://www.terraform.io/docs/language/functions/templatefile.html)

### Key Functions to Explore
- **String**: `upper()`, `lower()`, `substr()`, `replace()`, `split()`, `join()`
- **Collection**: `concat()`, `merge()`, `lookup()`, `keys()`, `values()`
- **Encoding**: `jsonencode()`, `jsondecode()`, `base64encode()`
- **Numeric**: `max()`, `min()`, `abs()`, `ceil()`, `floor()`
- **Type Conversion**: `tostring()`, `tonumber()`, `tobool()`

### Video Resources
- HashiCorp Learn: [Functions](https://learn.hashicorp.com/tutorials/terraform/functions)
- Terraform Functions Reference

## Common Challenges

You might encounter:
- **Function syntax**: Understanding function call syntax
- **Type mismatches**: Functions return specific types
- **Template syntax**: Using `${}` in template files
- **Nested functions**: Combining multiple functions

## Deliverables

Submit the following:

1. **Code Files**:
   - `main.tf` (resources using functions)
   - `functions-practice.tf` (function demonstrations)
   - `templates/userdata.sh.tpl` (template file)

2. **Documentation**: README.md documenting:
   - Each function used with use case
   - Example of function usage
   - When to use each function type
   - Best practices for function usage

3. **Demonstration**:
   - Show IAM policy created with jsonencode
   - Show template rendered correctly
   - Show list/map operations

## Key Takeaways

After completing this day, you should understand:
- Terraform's rich function library
- How to transform and manipulate data
- Template files for dynamic content
- Function composition and chaining

## Next Day Preview

Tomorrow (Day 7), you'll learn about:
- Creating reusable modules
- Module structure and organization
- Module inputs and outputs
- Calling modules

---

**Remember**: Destroy your resources when done!

**Functions are powerful tools!** 🚀
