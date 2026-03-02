provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform823" {
  bucket = "terraform823"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform823"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}