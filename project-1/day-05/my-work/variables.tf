variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "your_name" {
  description = "Your name for bucket naming"
  type        = string
  default     = "tovadel"
}

variable "bucket_names" {
  description = "List of bucket names for count"
  type        = list(string)
  default     = ["dev", "staging", "prod"]
}

variable "bucket_configs" {
  description = "Map of bucket configurations for for_each"
  type = map(object({
    environment = string
    versioning  = bool
  }))
  default = {
    app1 = {
      environment = "dev"
      versioning  = false
    }
    app2 = {
      environment = "staging"
      versioning  = true
    }
    app3 = {
      environment = "prod"
      versioning  = true
    }
  }
}

variable "enable_versioning" {
  description = "Enable versioning on buckets"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}