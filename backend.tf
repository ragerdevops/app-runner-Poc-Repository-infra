terraform {
  backend "s3" {
    bucket         = "bucket-s3"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
  }
}
  