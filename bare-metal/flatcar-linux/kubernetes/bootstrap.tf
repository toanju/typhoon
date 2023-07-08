# Kubernetes assets (kubeconfig, manifests)
module "bootstrap" {
  source = "git::https://github.com/toanju/terraform-render-bootstrap.git?ref=70770dc75af8fda37d3f7c8ebfdc203f704c69d4"

  cluster_name                    = var.cluster_name
  api_servers                     = [var.k8s_domain_name]
  etcd_servers                    = var.controllers.*.domain
  networking                      = var.networking
  enable_kube_proxy               = var.enable_kube_proxy
  network_mtu                     = var.network_mtu
  network_ip_autodetection_method = var.network_ip_autodetection_method
  pod_cidr                        = var.pod_cidr
  pod_cidr_v6                     = var.pod_cidr_v6
  service_cidr                    = var.service_cidr
  service_cidr_v6                 = var.service_cidr_v6
  cluster_domain_suffix           = var.cluster_domain_suffix
  enable_reporting                = var.enable_reporting
  enable_aggregation              = var.enable_aggregation
}

