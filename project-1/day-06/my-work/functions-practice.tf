# Task 1: JSON Encoding - IAM Policy
resource "aws_iam_policy" "s3_read_policy" {
  name        = "s3-read-policy-${random_id.suffix.hex}"
  description = "Allow S3 read access"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:ListBucket"
        ]
        Resource = [
          for bucket in var.bucket_names : "arn:aws:s3:::${bucket}/*"
        ]
      }
    ]
  })
}

# Task 2: Template Files - EC2 Userdata
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  user_data = templatefile("${path.module}/templates/userdata.sh.tpl", {
    instance_name = "web-${var.environment}"
    region        = var.aws_region
    environment   = var.environment
  })

  tags = local.merged_tags
}

# Task 3: List and Map Functions
locals {
  base_tags = {
    ManagedBy   = "Terraform"
    Project     = "Day06"
  }

  env_tags = {
    Environment = var.environment
  }

  conditional_tags = var.environment == "prod" ? {
    Backup   = "Required"
    Critical = "true"
  } : {}

  # merge() - Combine multiple maps
  merged_tags = merge(
    local.base_tags,
    local.env_tags,
    local.conditional_tags
  )

  # concat() - Combine multiple lists
  allowed_ports = concat(
    [22, 80],
    var.environment == "prod" ? [443] : []
  )
}

# Task 4: Lookup and Defaults
locals {
  env_config = {
    dev = {
      instance_type = "t2.micro"
      storage       = 20
    }
    staging = {
      instance_type = "t2.small"
      storage       = 50
    }
    prod = {
      instance_type = "t2.medium"
      storage       = 100
    }
  }

  # lookup() with default
  instance_type = lookup(local.env_config, var.environment, local.env_config["dev"]).instance_type
  storage_size  = lookup(lookup(local.env_config, var.environment, local.env_config["dev"]), "storage", 20)
}

# Task 5: String Functions and Random IDs
resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "function_demo" {
  # String functions
  bucket = lower("${var.environment}-Demo-Bucket-${random_id.suffix.hex}")

  tags = {
    Name        = title("${var.environment} bucket")
    Environment = upper(var.environment)
    # substr(string, offset, length)
    ShortName   = substr(var.environment, 0, 3)
    # replace(string, search, replace)
    Modified    = replace(var.environment, "dev", "development")
  }
}

# Outputs
output "iam_policy_json" {
  value = aws_iam_policy.s3_read_policy.policy
}

output "merged_tags" {
  value = local.merged_tags
}

output "allowed_ports" {
  value = local.allowed_ports
}

output "instance_type" {
  value = local.instance_type
}

output "bucket_name" {
  value = aws_s3_bucket.function_demo.id
}

output "random_suffix" {
  value = random_id.suffix.hex
}