# Contributing to Terraform Bootcamp

Thank you for contributing! This bootcamp is a community effort, and your input makes it better for everyone.

## How to Contribute

### Reporting Issues

Found a typo, broken link, or unclear instruction?

1. Check if issue already exists
2. Create a new issue with:
   - Clear description
   - Steps to reproduce (if applicable)
   - Expected vs actual behavior
   - Day/project affected

### Suggesting Improvements

Have an idea to make the bootcamp better?

1. Open an issue with "Enhancement" label
2. Describe the improvement
3. Explain why it would help
4. Suggest implementation (if you have ideas)

### Submitting Code Changes

Want to fix a bug or add content?

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Make your changes
4. Test thoroughly
5. Commit with clear messages (see Commit Message Conventions below)
6. Push to your fork
7. Open a Pull Request (use the PR template)

### Code Style Guidelines

- **Markdown**: Use proper formatting, clear headings
- **Terraform**: Follow `terraform fmt` standards
- **Comments**: Explain "why", not "what"
- **Examples**: Keep them simple and clear
- **Language**: Clear, beginner-friendly

## Content Guidelines

### For Daily READMEs

Each day should include:
- ✅ Learning objectives
- ✅ Theory section
- ✅ Step-by-step instructions
- ✅ Code examples
- ✅ Tasks checklist
- ✅ Common issues & solutions
- ✅ Deliverables
- ✅ Theory reading
- ✅ Key takeaways
- ✅ Next steps

### Writing Style

- **Clear**: Use simple language
- **Concise**: Get to the point
- **Complete**: Include all necessary steps
- **Correct**: Test all examples
- **Consistent**: Follow existing patterns

### Code Examples

- Use complete, working examples
- Include comments explaining key parts
- Test all code before submitting
- Use realistic values (not `example.com`)
- Include error handling where appropriate

## Review Process

1. **Initial Review**: Maintainer checks for completeness
2. **Testing**: Code examples are tested
3. **Feedback**: Suggestions for improvements
4. **Approval**: Changes merged to main branch

## Recognition

Contributors will be:
- Listed in CONTRIBUTORS.md (if you want)
- Credited in commit messages
- Thanked in meeting notes

## Commit Message Conventions

We follow conventional commit message format to keep the history clean and meaningful.

### Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- **feat**: New feature or functionality
- **fix**: Bug fix or error correction
- **docs**: Documentation changes only
- **refactor**: Code restructuring without changing functionality
- **test**: Adding or updating tests
- **chore**: Maintenance tasks, dependencies, build configs
- **style**: Code style changes (formatting, missing semicolons, etc.)
- **perf**: Performance improvements

### Examples

```bash
# Feature
feat(day-01): add S3 bucket creation with tags

# Bug fix
fix(day-03): correct AMI filter for us-east-1 region

# Documentation
docs(day-05): update README with count vs for_each examples

# Refactoring
refactor(day-07): reorganize module structure

# Chore
chore: update Terraform provider version to 5.0
```

### Best Practices

- Use imperative mood: "add" not "added" or "adds"
- Keep subject line under 50 characters
- Capitalize first letter of subject
- No period at end of subject
- Reference issue/PR in footer if applicable: `Closes #123`

### Scope

Scope is optional but helpful:
- Day number: `day-01`, `day-15`
- Project: `project-1`, `project-2`
- Component: `lambda`, `s3`, `vpc`

---

## For Students: Submitting Your Work

### Getting Started with Your Fork

1. **Fork the repository** on GitHub
2. **Clone your fork** to your local machine:
   ```bash
   git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
   cd terraform-bootcamp
   ```
3. **Add upstream remote** (to sync with main repo):
   ```bash
   git remote add upstream https://github.com/ORIGINAL_OWNER/terraform-bootcamp.git
   ```

### Working on Daily Assignments

1. **Create a branch** for each day:
   ```bash
   git checkout -b feature/day-01-first-terraform-resource
   # or
   git checkout -b feat/day-01-first-terraform-resource
   ```

2. **Work on your assignment** in the appropriate day folder

3. **Commit your work** following commit conventions:
   ```bash
   # Example commits for Day 1
   feat(day-01): create S3 bucket with Terraform
   docs(day-01): add README explaining Terraform workflow
   fix(day-01): correct bucket naming convention
   ```

4. **Push to your fork**:
   ```bash
   git push origin feature/day-01-first-terraform-resource
   ```

5. **Create Pull Request**:
   - Use the PR template
   - Follow PR naming: `[Type] - Day XX: Brief Description`
   - Examples:
     - `feat - Day 01: First Terraform Resource`
     - `feat - Day 11: Project Setup and S3 Bucket`
     - `fix - Day 03: AMI Data Source Configuration`

### Pull Request Naming Conventions

Follow this format for PR titles:

```
[Type] - Day XX: Brief Description
```

**Types** (same as commit types):
- `feat` - New feature/assignment completion
- `fix` - Bug fix or correction
- `docs` - Documentation updates
- `refactor` - Code improvements
- `chore` - Maintenance tasks

**Examples**:
- `feat - Day 01: First Terraform Resource`
- `feat - Day 11: Project Setup and S3 Bucket`
- `fix - Day 03: Correct AMI Filter Configuration`
- `docs - Day 15: Add Architecture Documentation`
- `feat - Day 25: Frontend to API Integration`



### Commit Message Examples for Students

```bash
# Day 1 - Creating resources
feat(day-01): create S3 bucket with versioning
docs(day-01): document Terraform workflow in README

# Day 2 - Variables
feat(day-02): add variables for bucket configuration
feat(day-02): implement outputs for bucket information

```
---

## Questions?

Not sure how to contribute? Ask in:
- Community channels i.e WhatApp
- Biweekly meetings
---

**Thank you for making this bootcamp better!** 🙏
