terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "dev/terraform.tfstate"
    region = "ap-southeast-2"
  }
}
