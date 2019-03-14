terraform {
  backend "gcs" {
    bucket = "my-state-bucket"       # This should match your networking backend
    prefix = "terraform/lab/vm"
  }
}

data "terraform_remote_state" "network" {
  backend = "gcs"

  config {
    bucket  = "my-state-bucket" # Update this too
    prefix  = "terraform/lab/network"
  }
}
