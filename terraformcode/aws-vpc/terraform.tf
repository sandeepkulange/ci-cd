terraform {
  backend "s3" {
    encrypt = "true"
    bucket  = "terraform-state-nexus-user"
   region  = "ap-southeast-2"
    key     = "vpc/terraform.tfstate"
  }
}

provider "aws" {
  region                  = "${var.region}"
  #shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.aws_profile}"
}
