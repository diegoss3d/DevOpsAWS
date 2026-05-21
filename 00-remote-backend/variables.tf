variable "tags" {
  type = map(string)
  default = {
    Environment = "production"
    Project     = "devops-workshop-na-nuvem"
  }
}

variable "assume_role" {
  type = object({
    arn    = string
    region = string
  })

  default = {
    arn    = "arn:aws:iam::917714909985:role/workshop-march-role"
    region = "us-east-1"
  }
}

variable "remote_backend" {
  type = object({
    s3_bucket_name         = string
    dynamodb_table_name    = string
    dynamodb_billing_mode  = string
    dynamodb_hash_key      = string
    dynamodb_hash_key_type = string
  })

  default = {
    s3_bucket_name         = "workshop-march-remote-backend-27031988"
    dynamodb_table_name    = "workshop-march-state-locking-table-27031988"
    dynamodb_billing_mode  = "PAY_PER_REQUEST"
    dynamodb_hash_key      = "LockID"
    dynamodb_hash_key_type = "S"
  }
}