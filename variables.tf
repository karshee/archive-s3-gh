variable "project" {
  type        = string
  description = "Project Name"
}

variable "instance" {
  type        = string
  description = "The instance of the infra"
}

variable "aws_account_id" {
  type        = string
  description = "The AWS Account ID"
}

variable "ou" {
  type        = string
  description = "Organisational Unit"
}

variable "account" {
  type        = string
  description = "The account within the OU"
}

variable "aws_region" {
  type = string
}

variable "env" {
  type    = string
  default = "dev"
}

variable "plan_only" {
  type    = bool
  default = false
}

variable "assume_role_name" {
  type    = string
  default = "TerraformSpokeAccounts"
}

variable "env_alias" {
  type = map(any)
  default = {
    "prod" = "prod"
  }
}
