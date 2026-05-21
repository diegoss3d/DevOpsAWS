data "aws_subnets" "private" {
  filter {
    name   = "map-public-ip-on-launch"
    values = ["false"]
  }

  filter {
    name   = "tag:Project"
    values = ["devops-workshop-na-nuvem"]
  }

  filter {
    name   = "tag:Environment"
    values = ["production"]
  }
}