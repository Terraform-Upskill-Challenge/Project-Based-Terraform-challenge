terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  # Provider picks up region from your AWS config/environment.
  # You can also explicitly set it here if you want.
}

resource "aws_instance" "day03_ec2" {
  ami           = data.aws_ami.amazon_linux_2_latest.id
  instance_type = "t2.micro"

  tags = merge(
    local.common_tags,
    {
      Name = "day-03-ec2-${data.aws_region.current.name}-${data.aws_caller_identity.current.account_id}"
    }
  )
}