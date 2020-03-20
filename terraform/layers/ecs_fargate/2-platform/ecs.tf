provider "aws" {
  access_key          = var.aws_access_key
  secret_key          = var.aws_secret_key
  region              = var.region
  version             = "~> 2.17"
  allowed_account_ids = ["${var.aws_account_id}"]
}

terraform {
  backend "s3" {}
}

data "terraform_remote_state" "infrastructure" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = var.remote_state_key
    region = var.region
  }
}

# resource "aws_ecs_cluster" "production-fargate-cluster" {
#   name = "Production-Fargate-Cluster"
# }

resource "aws_alb" "ecs_cluster_alb" {
  name            = "${var.ecs_cluster_name}-ALB"
  internal        = false
  security_groups = [aws_security_group.ecs_alb_security_group.id]
  subnets         = [split(",", join(",", data.terraform_remote_state.infrastructure.outputs.public_subnets))]

  tags = {
    Name = "${var.ecs_cluster_name}-ALB"
  }
}
