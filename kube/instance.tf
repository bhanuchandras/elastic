provider "google" {}

resource "google_container_cluster" "primary" {
  name               = "bhanu-chandra"
  zone               = "asia-east1"
  project	     = "cloudjupyter-bhanu"
  initial_node_count = 2


}
# The following outputs allow authentication and connectivity to the GKE Cluster.
output "client_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.primary.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}"
}
