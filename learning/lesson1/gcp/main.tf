# Test terraform 
provider "google" {
  project = "rugged-link-338506"
  region  = "asia-south2-b"
}

# Create a instance
resource "google_compute_instance" "Saminstance" {
  name          = "sammachine"
  machine_type  = "f1-micro"
  zone          = "asia-south2-a"
  
  boot_disk {
    initialize_params {
      image = "ubuntu-1804-lts"
    }
  }
  
  network_interface {
    network = "default"

    access_config {
    }
  }
}
