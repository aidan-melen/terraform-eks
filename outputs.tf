output "vpc" {
  description = "AWS VPC"
  value       = module.vpc
}

output "eks" {
  description = "AWS EKS Cluster"
  value       = module.eks
}
