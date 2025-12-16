terraform {
  required_version = ">= 1.3.0"

  required_providers {
    pingone = {
      source  = "pingidentity/pingone"
      version = "~> 0.18.0"
    }
    davinci = {
      source  = "pingidentity/davinci" # or the correct registry if published elsewhere
      version = "~> 0.5"
    }
  }
}

provider "pingone" {
  client_id       = var.pingone_client_id
  client_secret   = var.pingone_client_secret
  environment_id  = var.pingone_environment_id
  region = "Europe"
}

provider "davinci" {
  username   = var.pingone_dv_admin_username
  password   = var.pingone_dv_admin_password
  environment_id  = var.pingone_environment_id
  region = "Europe"
}

# Import and Deploy DaVinci Flow

resource "davinci_flow" "testflow" {
  environment_id = var.pingone_environment_id

  # Terraform loads the exported DaVinci flow JSON
  flow_json      = file("./flows/Change_Password.json")

}
