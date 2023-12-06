terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {token = "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"}


resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"
}