terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.31"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}
