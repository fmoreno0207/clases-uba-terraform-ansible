output "name" {
  value = proxmox_lxc.basic.*.hostname  
}

output "id" { 
  value = proxmox_lxc.basic.*.id
}