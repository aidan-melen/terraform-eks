output "vpc" {
  description = "EKS Cluster"
  value       = module.vpc
}

output "eks" {
  description = "EKS Cluster"
  value       = module.eks
}
