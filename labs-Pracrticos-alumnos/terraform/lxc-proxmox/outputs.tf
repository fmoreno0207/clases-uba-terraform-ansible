output "container_id" {
  value = proxmox_lxc.debian_container.vmid
}

output "container_ip" {
  value = proxmox_lxc.debian_container.network[0].ip
}
