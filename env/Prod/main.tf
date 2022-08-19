module "prod" {
  source = "../../infra"

  repository_name = "production"
  eks_cluster_name = "production-cluster"
}

output "DNSaddress" {
  value = module.prod.URL
}
