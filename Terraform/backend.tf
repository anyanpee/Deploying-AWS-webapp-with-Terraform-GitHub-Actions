terraform {
  backend "s3" {
    bucket           = "anyanpee-0077"
    key              = "terraform.tfstate"
    region           = "us-west-2"
    dynamodb_table   = "terraform-lock-table"
  }
}
