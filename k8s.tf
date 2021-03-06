resource "digitalocean_kubernetes_cluster" "k8s" {
  name    = "itizen"
  region  = "nyc1"
  version = "latest"

  node_pool {
    name       = "main"
    size       = "s-1vcpu-2gb"
    node_count = 1
  }
}

resource "digitalocean_kubernetes_node_pool" "k8s_nodes" {
  cluster_id = digitalocean_kubernetes_cluster.k8s.id

  name       = "main-node-pool"
  size       = "s-1vcpu-2gb"
  node_count = 1
}
