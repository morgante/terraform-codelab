terraform {
  backend "gcs" {
    bucket = "my-state-bucket"       # Change this
    prefix = "terraform/lab/vm"
  }
}
