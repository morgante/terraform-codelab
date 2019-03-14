resource "google_compute_firewall" "allow-ping" {
  name    = "allow-ping"
  network = "${module.vpc.network_name}"
  project = "${google_project_service.compute.project}"

  allow {
    protocol = "icmp"
  }

  # Allow traffic from everywhere to instances with an http-server tag
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-ping"]
}

resource "google_compute_firewall" "allow-http" {
  name    = "allow-http"
  network = "${module.vpc.network_name}"
  project = "${google_project_service.compute.project}"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  # Allow traffic from everywhere to instances with an http-server tag
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-http"]
}
