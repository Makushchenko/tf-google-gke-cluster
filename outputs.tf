output "config_host" {
  value = "https://${data.google_container_cluster.main.endpoint}"
  depends_on = [
    google_container_cluster.this
  ]
}

output "config_token" {
  value = data.google_client_config.current.access_token
  depends_on = [
    google_container_cluster.this
  ]
}

output "ca_certificate" {
  description = "Cluster ca certificate (base64 encoded)"
  value       = google_container_cluster.this.master_auth[0].cluster_ca_certificate
  sensitive   = true
  depends_on = [
    google_container_cluster.this
  ]
}

output "endpoint_dns" {
  description = "Cluster endpoint DNS"
  value       = google_container_cluster.this.control_plane_endpoints_config[0].dns_endpoint_config[0].endpoint
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

output "managed_instance_group_urls" {
  description = "List of instance group URLs which have been assigned to this node pool."
  value       = google_container_node_pool.this.managed_instance_group_urls
}