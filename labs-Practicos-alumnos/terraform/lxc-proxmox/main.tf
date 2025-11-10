# terraform {
#   required_providers {
#     proxmox = {
#       source  = "telmate/proxmox"
#       version = "3.0.1-rc3"
#     }
#   }

#   required_version = "1.5.0"
# }

# provider "proxmox" {
#   pm_api_url          = var.pm_api_url
#   pm_api_token_id     = var.pm_api_token_id
#   pm_api_token_secret = var.pm_api_token_secret
#   pm_tls_insecure     = true
# }

# # Crear contenedor Debian solo con acceso por usuario y contraseña
# resource "proxmox_lxc" "debian_container" {
#   hostname     = var.hostname
#   target_node  = var.pm_node
#   ostemplate   = "local:vztmpl/debian-12-standard_12.7-1_amd64.tar.zst"
#   password     = "terraform123"
#   unprivileged = true

#   rootfs {
#     storage = "local"
#     size    = "8G"
#   }

#   memory = 1024
#   cores  = 2
#   swap   = 512

#   network {
#     name   = "eth0"
#     bridge = "vmbr0"
#     ip     = "dhcp"
#   }

#   start = true
# }

terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.2-rc04"
    }
  }
  required_version = ">= 1.5.0"
}

provider "proxmox" {
  pm_api_url          = var.pm_api_url
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
  pm_tls_insecure     = true
}

resource "proxmox_lxc" "basic" {
  count        = var.cantidad
  target_node  = "pve"
  hostname     = "lxc-basic"
  ostemplate   = "local:vztmpl/debian-12-standard_12.12-1_amd64.tar.zst"
  password     = "terraform123"
  unprivileged = true

  // Terraform will crash without rootfs defined
  rootfs {
    storage = "local-lvm"
    size    = "8G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
  }
  start = true

  # ✅ Autenticación por clave SSH
  ssh_public_keys = file("~/.ssh/id_rsa.pub")
}

