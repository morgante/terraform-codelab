terraform {
  backend "gcs" {
    bucket = "3fa6a536c8f02f4e"       # Change this to <my project id>-state-bucket
    prefix = "terraform/lab/network"
  }
}
