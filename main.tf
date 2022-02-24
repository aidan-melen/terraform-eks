provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Example    = var.name
      GithubRepo = "terraform-aws-eks"
      GithubOrg  = "terraform-aws-modules"
    }
  }
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "18.7.2"

  cluster_name                    = var.name
  cluster_version                 = "1.21"
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
}
