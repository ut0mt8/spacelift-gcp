resource "google_compute_instance" "spcl-instance" {
  name                      = "spcl-instance"
  machine_type              = "e2-small"
  project                   = var.project
  zone                      = var.default_zone
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = "projects/rmazelier-admin/regions/europe-west1/subnetworks/vpc-shared-rmazelier-dev-subnet"
  }
}
