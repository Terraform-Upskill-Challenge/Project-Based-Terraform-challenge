# GitHub Workflows and Templates

This directory contains GitHub Actions workflows and templates for the Terraform Bootcamp.

## Workflows

### 1. Prevent Direct Push to Main
**File**: `.github/workflows/prevent-main-push.yml`

**Purpose**: Blocks any direct pushes to the main branch and guides students to use Pull Requests instead.

**Triggers**: 
- Push to `main` or `master` branch

**What it does**:
- Detects direct pushes to main
- Fails the workflow with helpful error message
- Provides instructions on proper workflow (create branch → PR)

**Setup**: 
- Works automatically once the workflow file is in the repository
- For stronger protection, also configure GitHub Branch Protection Rules (see [SETUP_BRANCH_PROTECTION.md](./SETUP_BRANCH_PROTECTION.md))

### 2. Validate PR Template
**File**: `.github/workflows/validate-pr-template.yml`

**Purpose**: Ensures Pull Requests follow the required template format.

**Triggers**:
- PR opened
- PR edited
- PR synchronized (new commits)
- PR reopened

**What it validates**:
- ✅ PR Title follows convention: `[type] - Day XX: Description`
- ✅ Type of Change is selected (feat, fix, docs, etc.)
- ✅ Project and Day are specified
- ✅ Description is filled (not just placeholder)
- ✅ Changes Made section is completed
- ✅ Acceptance Criteria checklist is checked
- ✅ Final Checklist is reviewed

**What happens**:
- If validation fails: Workflow fails and comments on PR with guidance
- If validation passes with warnings: Workflow passes but shows warnings
- If validation passes: Workflow succeeds

## Templates

### Pull Request Template
**File**: `.github/pull_request_template.md`

Automatically populates when students create a new Pull Request. Ensures all required information is provided.

## Setup Instructions

1. **Branch Protection** (Recommended):
   - Follow [SETUP_BRANCH_PROTECTION.md](./SETUP_BRANCH_PROTECTION.md) to configure GitHub branch protection rules
   - This provides the strongest protection against direct pushes

2. **Workflows**:
   - Workflows are automatically active once committed to the repository
   - No additional setup required

3. **Testing**:
   - Test the workflows by creating a test PR
   - Verify that direct pushes to main are blocked
   - Verify that PR template validation works

## Troubleshooting

### Workflow not running?
- Check that workflow files are in `.github/workflows/`
- Verify file syntax is correct (YAML)
- Check GitHub Actions tab for errors

### PR validation too strict?
- Adjust validation rules in `validate-pr-template.yml`
- Modify the checks as needed for your requirements

### Students bypassing protection?
- Ensure branch protection rules are configured
- Check that "Include administrators" is enabled
- Verify "Do not allow bypassing" is enabled
