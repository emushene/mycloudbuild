terraform {
  required_providers {
    google = {
        source = "hashicorp/gcp"
        version = "~>4.16"

    }
  }
  backend "gcs" {
    bucket = "swordinc17_state_file"
    prefix = "terraform/project_state"
    
  }
  
  required_version = ">=1.5.0"
}

provider "google" {
    region = "europe-west2"
    project = "kenya-402404"
    credential = "GOOGLE_APPLICATION_CREDENTIALS"

    test=""
  
}