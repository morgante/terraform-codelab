# This handles making sure the compute API is activated
resource "google_project_service" "compute" {
  service = "compute.googleapis.com"
  project = "${var.project_id}"
}
