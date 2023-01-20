variable "ct_client_id" {
  description   = "client ID"
  type          = string
  sensitive     = true 
}
variable "ct_client_secret" {
  description = "client secret"
  type = string
  sensitive = true
}
variable "ct_project_key" {
  description   = "target project"
  type          = string
  sensitive     = false 
}
variable "ct_scopes" {
  description   = "API client scopes"
  type          = string
  sensitive     = false 
}
variable "ct_api_url" {
  description   = "target api url "
  type          = string
  sensitive     = false 
}
variable "ct_auth_url" {
  description   = "commercetools target auth url"
  type          = string
  sensitive     = false 
}