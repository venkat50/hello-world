resource "google_compute_instance" "default" {
  name         = "venkat-test-terraform"
  machine_type = "e2-medium"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20250311"
    }
  }

   labels = {
    user                  = "venkat"
  }

service_account {
    email  = "980596850008-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
}

  network_interface {
    network = "harness-se-network"
    access_config {
      network_tier = "PREMIUM"
    }
    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "projects/sales-209522/regions/us-east1/subnetworks/harness-se-network"
  }
}
