terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.59.0"
    }
  }

    backend "s3" {
    bucket         = "remote-mohan-devops"
    key            = "roboshop-eks-tfstate"  # s3 bucket created with this name
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true # Activates native S3 state locking
  }

}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
