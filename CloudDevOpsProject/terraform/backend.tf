terraform {
  backend "s3" {
    bucket = "ivolve-tfstate-bucket"
    key    = "clouddevops/terraform.tfstate"
    region = "us-east-1"
  }
}
