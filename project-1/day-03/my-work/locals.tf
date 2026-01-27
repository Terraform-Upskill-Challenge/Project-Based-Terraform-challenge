locals {
  common_tags = {
    Owner      = "Olusola Eta-Oko"
    Environment = "Learning"
    ManagedBy  = "Terraform"
    AccountId  = data.aws_caller_identity.current.account_id
    Region     = data.aws_region.current.name
    Project    = "Project-Based-Terraform-Challenge"
    Day        = "03"
  }
}