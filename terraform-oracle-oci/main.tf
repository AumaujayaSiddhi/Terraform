resource "oci_database_autonomous_database" "TESTATPDB" {
  display_name = "TESTATPDB"
  db_name = "TESTATPDB"
  compartment_id = var.compartment_id
  db_workload = "OLTP"  # OLTP = Transaction Processing
  is_free_tier = true  # Set false if using paid tier
  db_version = "23ai"
  admin_password = "xxx"  # Change this securely
  license_model = "LICENSE_INCLUDED"  # "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
  customer_contacts {
    email = var.email_id
  }
  data_storage_size_in_tbs = 1
  cpu_core_count = 1
  is_auto_scaling_enabled = false # Specify false if auto scaling cpu core count is not required
  is_dedicated = false
  is_mtls_connection_required = true
  lifecycle {
    prevent_destroy = false  # Ensures Terraform allows deletion
  }
}

