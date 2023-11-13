# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {

  # cloud {
  #   workspaces {
  #     name = "learn-terraform-eks"
  #   }
  # }
  backend "s3" {
    bucket    = "guru-terra-state-13141314"
    key       = "terra-state"
    region    = "us-east-1"
    dynamodb_table = "dynamodb-state-locking"
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    # cloudinit = {
    #   source  = "hashicorp/cloudinit"
    #   version = "~> 2.3.2"
    # }
  }

  required_version = "~> 1.3"
}

