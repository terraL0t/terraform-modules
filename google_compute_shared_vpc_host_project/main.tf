resource "google_project_service" "compute_api" {
  project = var.host-project-id
  service = "compute.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}

resource "google_compute_shared_vpc_host_project" "host_project" {
  project = var.host-project-id
  
  depends_on = [google_project_service.compute_api]
}
