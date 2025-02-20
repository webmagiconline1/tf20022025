resource "google_compute_instance" "jenkins" {
    count        = var.instance_count
    name         = "${var.instance_name}-${count.index}"
    machine_type = var.machine_type
    zone         = var.zone
    project      = var.project

    boot_disk {
        initialize_params {
            image = var.boot_disk_image
        }
    }

    network_interface {
        network = var.network
        access_config {
        }
    }
}