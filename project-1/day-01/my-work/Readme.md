# Day 01 – Terraform S3 Bucket Practice

## Objective

Create and manage an AWS S3 bucket using Terraform and understand the basic Terraform workflow.

---

## What `terraform init` Does

* Initializes the Terraform project
* Downloads required provider plugins (AWS)
* Prepares the working directory for execution

---

## What `terraform plan` Shows

* Displays the execution plan
* Shows what resources Terraform will create, update, or delete
* Does not make any changes to AWS

---

## What `terraform apply` Does

* Executes the plan
* Creates the defined AWS resources
* Saves infrastructure details in the state file

---

## What the State File Contains

* Mapping between Terraform resources and real AWS resources
* Resource IDs, configurations, and metadata
* Current known state of infrastructure

---

## Why State Files Are Important

* Terraform uses the state file to track resources
* Prevents duplicate resource creation
* Enables updates and deletions safely
* Required for collaboration and automation

---

## Project Structure

```
day-01/
├── main.tf
├── README.md
└── screenshots/
    └── bucket-created.png
```

---

## Output

An S3 bucket was successfully created and verified in the AWS Console.
