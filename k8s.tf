resource "digitalocean_kubernetes_cluster" "k8s" {
  name    = "itizen"
  region  = "nyc1"
  version = "1.18.6-do.0"

  node_pool {
    name       = "main"
    size       = "s-1vcpu-1gb"
    node_count = 1
  }
}

resource "digitalocean_kubernetes_node_pool" "k8s_nodes" {
  cluster_id = digitalocean_kubernetes_cluster.k8s.id

  name       = "main-node-pool"
  size       = "s-1vcpu-1gb"
  node_count = 1
}
