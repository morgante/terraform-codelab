data "google_compute_image" "ubuntu" {
  family  = "ubuntu-1804-lts"
  project = "ubuntu-os-cloud"
}

resource "google_compute_instance" "app" {
  name         = "my-app-instance"
  project      = var.project_id
  machine_type = "n1-standard-2"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = data.google_compute_image.ubuntu.self_link
    }
  }

  network_interface {
    subnetwork         = data.terraform_remote_state.network.outputs.first_subnet_name
    subnetwork_project = var.project_id

    access_config {
      # Include this section to give the VM an external ip address
    }
  }
  metadata_startup_script =  "apt-get update && apt-get install nginx -y && rm /var/www/html/* && echo '<!doctype html><html><body><h1>Hello Google!</h1></body></html>' | sudo tee /var/www/html/index.html "
  tags = ["allow-ping", "allow-http", "allow-ssh"]
}
