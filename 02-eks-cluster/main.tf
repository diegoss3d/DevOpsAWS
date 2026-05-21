terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "workshop-march-remote-backend-27031988"
    key    = "eks-cluster/terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "workshop-march-state-locking-table-27031988"
    use_lockfile = true
  }

}

# Configure the AWS Provider
provider "aws" {
  region = var.assume_role.region
  default_tags {
    tags = var.tags
  }
  assume_role {
    role_arn = var.assume_role.arn
  }
}

