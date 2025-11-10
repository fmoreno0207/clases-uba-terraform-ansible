resource "proxmox_vm_qemu" "debian_vm" {
  name        = var.hostname
  target_node = var.pm_node
  vmid        = 0
  onboot      = true
  agent       = 1
  kvm         = false
  cpu         = "qemu64"

  memory = var.vm_memory
  cores  = var.vm_cores

  boot     = "cdn"
  bootdisk = "scsi0"
  iso      = var.iso_image

  disk {
    storage  = var.storage
    size     = var.disk_size
    type     = "scsi"
    iothread = 1
  }

  network {
    model  = "virtio"
    bridge = var.bridge
  }
}
