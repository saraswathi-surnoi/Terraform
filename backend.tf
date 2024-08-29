terraform {
  backend "s3" {
    bucket = "my-s3-bucket-for-tf-state1"
    key = "main"
    region = "ap-south-1"
  }
}
