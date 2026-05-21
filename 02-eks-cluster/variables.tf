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

variable "ecr_repositories" {
  type    = list(string)
  default = ["workshop/production/frontend", "workshop/production/backend"]
}