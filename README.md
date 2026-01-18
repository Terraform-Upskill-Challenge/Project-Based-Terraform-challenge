# Terraform Bootcamp: From Zero to Infrastructure Hero 🚀

## Welcome!

This bootcamp is designed for learners who want to master Terraform through hands-on projects rather than just tutorials. We'll build real-world infrastructure while learning the theory and best practices along the way.

## 📋 Bootcamp Overview

- **Duration**: 8-10 weeks
- **Format**: Project-based learning with biweekly live sessions
- **Prerequisites**: Basic AWS knowledge (helpful but not required)
- **Goal**: Deploy production-ready infrastructure using Terraform

## 🎯 Learning Objectives

By the end of this bootcamp, you will be able to:
- Write and maintain Terraform configurations
- Deploy multi-tier architectures on AWS
- Use Terraform modules and best practices
- Manage state files and remote backends
- Implement CI/CD for infrastructure
- Troubleshoot common Terraform issues

## 📁 Repository Structure

```
terraform-bootcamp/
├── README.md (this file)
├── project-1/ (Terraform Foundations - Days 1-10)
│   ├── README.md
│   ├── day-01/ (Your First Terraform Resource)
│   ├── day-02/ (Variables & Outputs)
│   ├── day-03/ (Data Sources & Locals)
│   ├── day-04/ (State Management)
│   ├── day-05/ (Count, For_Each, Conditionals)
│   ├── day-06/ (Built-in Functions)
│   ├── day-07/ (Creating Modules)
│   ├── day-08/ (Workspaces vs Directories)
│   ├── day-09/ (Debugging & Troubleshooting)
│   └── day-10/ (Best Practices)
├── project-2/ (Cloud Resume Platform - Days 11-25)
│   ├── README.md
│   ├── day-11/ (Project Setup + S3)
│   ├── day-12/ (Upload Resume Files)
│   ├── day-13/ (Public Access)
│   ├── day-14/ (CloudFront)
│   ├── day-15/ (Documentation)
│   ├── day-16/ (Route53)
│   ├── day-17/ (ACM Certificate)
│   ├── day-18/ (HTTPS + Custom Domain)
│   ├── day-19/ (VPC Foundation Part 1)
│   ├── day-20/ (VPC Foundation Part 2)
│   ├── day-21/ (DynamoDB)
│   ├── day-22/ (Lambda Code)
│   ├── day-23/ (Lambda Deployment)
│   ├── day-24/ (API Gateway)
│   └── day-25/ (Frontend Integration)
└── project-3/ (Production Hardening & CI/CD - Days 26-40)
    ├── README.md
    ├── day-26/ (Architecture Decision)
    ├── day-27-30/ (Enhancements or ECS Migration)
    ├── day-31/ (GitHub Actions - Frontend)
    ├── day-32/ (GitHub Actions - Infrastructure)
    └── day-33-40/ (Modules, Monitoring, Security, etc.)
```

## 🗓️ Timeline Overview

### Project 1: Terraform Foundations (Weeks 1-2)
- **Days 1-10**: Learn Terraform basics through small exercises
- Focus: Core concepts, variables, modules, state, best practices
- **Destroy resources after each day** - building skills, not infrastructure

### Project 2: Cloud Resume Platform (Weeks 3-5)
- **Days 11-25**: Build a complete cloud resume with API backend
- Focus: Real-world application, S3, CloudFront, Lambda, API Gateway, VPC
- **Infrastructure grows day by day** - don't destroy until complete

### Project 3: Production Hardening & CI/CD (Weeks 6-8)
- **Days 26-40**: Add production features
- Focus: CI/CD pipelines, monitoring, security, backups, optimization
- **Production-ready infrastructure**

## 🤝 Biweekly Meetings

We'll meet every **2 weeks** (schedule TBD) to:
- Review progress and challenges
- Live code walkthroughs
- Q&A sessions
- Peer code reviews

See [MEETINGS.md](./MEETINGS.md) for detailed meeting structure.

## 📚 Getting Started

1. **Fork and Clone**: Fork this repository and clone it to your local machine
2. **Start with Day 1**: Navigate to `project-1/day-01/README.md` for your first assignment
3. **Follow Daily READMEs**: Each day has complete instructions in its own README.md
4. **Create Pull Requests**: Submit your work via PRs (see [CONTRIBUTING.md](./CONTRIBUTING.md))
5. **Join the Community**: Engage with peers, ask questions, share learnings

## 🛠️ Prerequisites Setup

Before starting, ensure you have:
- [ ] AWS Account (free tier is fine)
- [ ] Terraform installed ([Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli))
- [ ] AWS CLI configured
- [ ] Git installed
- [ ] Code editor (VS Code recommended with Terraform extension)
- [ ] Access to this repository

## 📖 Recommended Reading

- **Primary**: "Terraform: Up & Running" by Yevgeniy Brikman
- **Reference**: [Terraform Official Docs](https://www.terraform.io/docs)
- **AWS**: [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)

## 🎓 How to Use This Bootcamp

### Daily Workflow

For each day:

1. **Read the Day's README**: Navigate to the day folder (e.g., `project-1/day-01/README.md`)
2. **Fork and Clone**: Follow the git clone instructions in each README
3. **Create a Branch**: Use proper naming (e.g., `feat/day-01-first-terraform-resource`)
4. **Complete Tasks**: Work through the tasks without step-by-step instructions (encourages research!)
5. **Submit PR**: Create a pull request following conventions in [CONTRIBUTING.md](./CONTRIBUTING.md)

### Learning Philosophy

- **No step-by-step instructions**: Encourages research and independent problem-solving
- **Each day builds on previous**: Progressive learning, don't skip ahead
- **Real-world application**: Building actual infrastructure you'll use
- **Self-directed**: Research, break things, fix them, learn deeply
- **Comprehensive resources**: Each day includes official docs, videos, and articles

### Project Structure Philosophy

- **Project 1**: Destroy resources after each day - building skills, not infrastructure
- **Project 2**: Infrastructure grows day by day - don't destroy until complete
- **Project 3**: Production-ready infrastructure - add features incrementally

## ✅ Success Criteria

You'll know you're ready to move on when:
- You can explain what you built
- Your code follows the patterns shown
- You've completed all deliverables
- You can help others with the same concepts

## 🛡️ Repository Protection

This repository has automated protections in place:

- **Branch Protection**: Direct pushes to main are blocked
- **PR Template Validation**: All PRs must follow the template format
- **Automated Checks**: Workflows validate PRs before merging

See [.github/README.md](.github/README.md) for details on workflows and setup.

## 🆘 Getting Help

- **Meetings**: Bring questions to biweekly sessions
- **Community**: Help each other in group channels (WhatsApp)
- **Resources**: Check [RESOURCES.md](./RESOURCES.md) for common issues

## 📝 Contributing

Found an error or have a suggestion? See [CONTRIBUTING.md](./CONTRIBUTING.md) for:
- How to submit pull requests
- Commit message conventions
- PR naming standards
- Code style guidelines

## 📋 Quick Day Reference

### Project 1: Terraform Foundations (Days 1-10)
- **Day 1**: Your First Terraform Resource → `project-1/day-01/README.md`
- **Day 2**: Variables & Outputs → `project-1/day-02/README.md`
- **Day 3**: Data Sources & Locals → `project-1/day-03/README.md`
- **Day 4**: State Management → `project-1/day-04/README.md`
- **Day 5**: Count, For_Each, Conditionals → `project-1/day-05/README.md`
- **Day 6**: Built-in Functions → `project-1/day-06/README.md`
- **Day 7**: Creating Modules → `project-1/day-07/README.md`
- **Day 8**: Workspaces vs Directories → `project-1/day-08/README.md`
- **Day 9**: Debugging & Troubleshooting → `project-1/day-09/README.md`
- **Day 10**: Best Practices → `project-1/day-10/README.md`

### Project 2: Cloud Resume Platform (Days 11-25)
- **Days 11-15**: Static Website Foundation → `project-2/day-11/` through `day-15/`
- **Days 16-20**: Custom Domain + Network → `project-2/day-16/` through `day-20/`
- **Days 21-25**: Visitor Counter API → `project-2/day-21/` through `day-25/`

### Project 3: Production Hardening (Days 26-40)
- **Day 26**: Architecture Decision → `project-3/day-26/README.md`
- **Days 27-30**: Enhancements or ECS → `project-3/day-27/` through `day-30/`
- **Days 31-32**: CI/CD Pipeline → `project-3/day-31/` and `day-32/`
- **Days 33-40**: Production Features → `project-3/day-33/` through `day-40/`

---

**Let's build something amazing together!** 🎉
