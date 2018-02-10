
// Configure the Google Cloud Provider
provider "google" {
  credentials = "${file("${var.account_key}")}"
  project     = "${var.google_project_id}"
  region      = "${var.region}"
}

// Create the backend CGE instance
resource "google_compute_instance" "default" {
  name = "image-analyzer-backend"
  zone      = "${var.zone}"
  machine_type = "${var.machine_type}"
  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }
  network_interface {
    network = "default"
  }
/*  metadata {
    sshKeys = "${var.ssh_user}:${file(var.ssh_pub_key_file)}"
  } */
}
