terraform {
  backend "gcs" {
    bucket = "3fa6a536c8f02f4e" # Edit this this line to match your lab-networking/networking backend.tf file
    prefix = "terraform/lab/vm"
  }
}

data "terraform_remote_state" "network" {
  backend = "gcs"

  config = {
    bucket  = "3fa6a536c8f02f4e" # Update this too
    prefix  = "terraform/lab/network"
  }
}
