provider "google" {
  version = "~> 1.20"
  project = "${var.project_id}"
  credentials = "${file("credentials.json")}"
}
