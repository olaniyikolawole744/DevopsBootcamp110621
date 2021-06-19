terraform {
  backend "s3" {
    bucket = "devopsbucket744"
    key    = "department/project/key"
    region = "us-east-1"
  }
}