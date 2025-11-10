variable "pm_api_url" {}
variable "pm_api_token_id" {}
variable "pm_api_token_secret" {
  sensitive = true
}

variable "count_vms" {
  default = 2
}