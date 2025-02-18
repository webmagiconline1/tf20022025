resource "google_compute_instance" "jenkins" {
    name         = "jenkins-instance"
    machine_type = "e2-standard-2"
    zone         = "us-central1-a"

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }

    network_interface {
        network = "default"
        access_config {
        }
    }
}