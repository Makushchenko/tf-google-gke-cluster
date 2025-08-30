output "endpoint" {
  description = "Cluster endpoint"
  value       = google_container_cluster.this.private_cluster_config[0].private_endpoint
  depends_on = [
    google_container_cluster.this
  ]
}

output "ca_certificate" {
  sensitive   = true
  description = "Cluster ca certificate (base64 encoded)"
  value       = google_container_cluster.this.master_auth[0].cluster_ca_certificate
  depends_on = [
    google_container_cluster.this
  ]
}

output "cluster_name" {
  description = "Cluster name"
  value       = google_container_cluster.this.name
  depends_on = [
    google_container_cluster.this
  ]
}