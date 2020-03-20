variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_account_id" {}
variable "environment" {}
variable "region" {}
variable "remote_state_bucket" {}
variable "remote_state_key" {}

### ECS variables
variable "ecs_cluster_name" {}
variable "internet_cidr_blocks" {}
variable "ecs_domain_name" {}
