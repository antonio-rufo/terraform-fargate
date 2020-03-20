environment          = "Antonio-Accounts"
region               = "ap-southeast-2"
remote_state_key     = "PROD/infrastructure.tfstate"
remote_state_bucket  = "130541009828-build-state-bucket-antonio-fargate"

# ECS variables for production
ecs_domain_name = "antoniorufo.com"
ecs_cluster_name = "Production-ECS-Cluster"
internet_cidr_blocks = "0.0.0.0/0"
