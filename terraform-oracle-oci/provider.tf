
# To setup oci terraform refer : https://docs.oracle.com/en-us/iaas/Content/dev/terraform/tutorials/tf-provider.htm
provider "oci" {
  tenancy_ocid = var.ocid_tenancy
  user_ocid = var.ocid_user 
  private_key_path = var.key_path
  fingerprint = var.finger_print
  region = var.region_identifier
}