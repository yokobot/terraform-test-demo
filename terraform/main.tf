provider "aws" {
  region = "ap-northeast-1"
}

locals {
  bucket_name = "yokoyama-test-bucket_?"
}


resource "aws_s3_bucket" "test" {
  bucket = local.bucket_name 
}
