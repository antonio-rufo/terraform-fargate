variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_account_id" {}
variable "environment" {}
variable "region" {}
variable "remote_state_bucket" {}
variable "remote_state_key" {}

#application variables for task
variable "ecs_service_name" {}
variable "docker_image_url" {}
variable "memory" {}
variable "docker_container_port" {}
variable "spring_profile" {}
variable "desired_task_number" {}
