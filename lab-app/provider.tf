provider "google" {
  project = var.project_id
}

resource "google_compute_project_metadata" "os-login" {
  metadata = {
    enable-oslogin  = false
  }
}