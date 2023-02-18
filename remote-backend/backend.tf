terraform {
  backend "s3" {
    bucket = "terraform-cent-backend"
    key    = "network/terraform.tfstate"
    region = "ap-south-1"
  }
}