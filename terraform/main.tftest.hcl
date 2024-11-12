provider "aws" {
  region = "ap-northeast-3"
}

run "check_bucket_name_plan" {
  command = plan

  assert {
        condition     = aws_s3_bucket.test.bucket == "yokoyama-test-bucket_?"
        error_message = "Bucket name is wrong."
  }
}

run "check_bucket_name_apply" {
  command = apply

  assert {
        condition     = aws_s3_bucket.test.bucket == "test-yokoyama-test-bucket_?"
        error_message = "Bucket name is wrong."
  }
}
