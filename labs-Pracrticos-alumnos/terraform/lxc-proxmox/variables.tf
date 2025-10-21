variable "pm_api_url" {
  description = "URL del servidor Proxmox"
  type        = string
}

variable "pm_api_token_id" {
  description = "ID del token de API (usuario@realm!token)"
  type        = string
}

variable "pm_api_token_secret" {
  description = "Secreto del token API"
  type        = string
  sensitive   = true
}

variable "pm_node" {
  description = "Nombre del nodo de Proxmox"
  type        = string
  default     = "vbox"
}

variable "hostname" {
  description = "Nombre del contenedor LXC"
  type        = string
  default     = "debian12-demo"
}