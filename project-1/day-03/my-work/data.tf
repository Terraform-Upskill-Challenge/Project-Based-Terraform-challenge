data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# Latest Amazon Linux 2 AMI (HVM, EBS-backed) for the current region
data "aws_ami" "amazon_linux_2_latest" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}