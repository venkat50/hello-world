resource "google_compute_instance" "default" {
  name         = "venkat-test-terraform"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2210-kinetic-amd64-v20230126"
    }
  }

   labels = {
    user                  = "venkat"
  }

  network_interface {
    network = "default"
    access_config {
      network_tier = "PREMIUM"
    }
    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "projects/sales-209522/regions/us-east1/subnetworks/harness-se-network"
  }
}
