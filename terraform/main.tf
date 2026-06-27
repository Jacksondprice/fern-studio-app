terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.60" }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "artifacts" {
  bucket = "fern-studio-app-artifacts"
}

resource "aws_db_instance" "main" {
  engine         = "postgres"
  instance_class = "db.t4g.micro"
  username       = var.db_username
  password       = var.db_password
}
