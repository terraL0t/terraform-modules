module "gcs_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 4.0"
  project_id  = var.project_id
  names = var.names
  prefix = var.prefix
  location = var.location
}

