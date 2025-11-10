variable "pm_api_url" {}
variable "pm_api_token_id" {}
variable "pm_api_token_secret" {}
variable "pm_node" {}
variable "hostname" {}


variable "vm_memory" {
  default = 2048
}

variable "vm_cores" {
  default = 2
}

variable "disk_size" {
  default = "10G"
}

variable "bridge" {
  default = "vmbr0"
}

variable "storage" {
  default = "local"
}

variable "iso_image" {
  default = "local:iso/debian-12.10.0-amd64-netinst.iso"
}
