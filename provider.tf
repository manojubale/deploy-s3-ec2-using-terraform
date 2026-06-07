terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "s3-demo-b-d"
    key     = "dev/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true

    # Native S3 locking
    use_lockfile = true
  }

}

provider "aws" {
  region = var.aws_region
}
