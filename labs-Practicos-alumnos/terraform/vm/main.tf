resource "proxmox_vm_qemu" "my_vm" {
  count = var.count_vms
  name        = "vm-debian12-demo-terraform ${count.index + 1}"
  target_node = "pve"

  network {
      id = 0
      bridge    = "vmbr0"
      firewall  = false
      link_down = false
      model     = "e1000"
  }
  cpu {
    cores = 2
  }

  memory = 2048

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = "20G"
        }
      }
    }

    ide {
      ide2 {
        cdrom {
          iso = "local:iso/debian-12.10.0-amd64-netinst.iso"
        }
      }
    }
  }
}
