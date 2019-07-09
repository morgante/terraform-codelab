output "network_name" {
  value = google_compute_network.vpc.name
}

output "first_subnet_name" {
  value = google_compute_subnetwork.vpc-subnet1.name
}

# Add you new output below this line