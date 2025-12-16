# PingOne Provider Variables

variable "pingone_client_id" {
  description = "PingOne OAuth client ID"
}

variable "pingone_client_secret" {
  description = "PingOne OAuth client secret"
  #sensitive   = true
}

variable "pingone_environment_id" {
  description = "PingOne Environment ID"
}

# DaVinci Provider Variables

variable "pingone_dv_admin_username" {
  description = "Username"
}

variable "pingone_dv_admin_password" {
  description = "Enter Password"
  sensitive   = true
}

