terraform {
  required_version = "~> 1.5.7"
  backend "s3" {
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

locals {
  tag_suffix  = "${var.account}-${var.ou}-${var.env}"
  assume_role = "${var.assume_role_name}${var.plan_only ? "PlanOnly" : ""}"
}

# Configure the AWS Provider & set Region
provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn = "arn:aws:iam::${var.aws_account_id}:role/${local.assume_role}"
  }
  default_tags {
    tags = {
      Environment  = var.env
      Name         = local.tag_suffix
      Division     = "Compliance"
    }
  }
}

data "aws_default_tags" "default" {}
