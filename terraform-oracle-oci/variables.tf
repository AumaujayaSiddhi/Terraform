# To get tenancy_ocid after you login to Oracle Cloud Infrastructure https://docs.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#five
variable "ocid_tenancy" {
  description = "OCID of tenancy"
}

# To get user_ocid after you login to Oracle Cloud Infrastructure https://docs.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#five
variable "ocid_user" {
  description = "OCID of user"
}

# To get private_key_file generate it by refering to oci documentation(https://docs.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#two) and download
variable "key_path" {
  description = "Path of the private key file"
}

# Once private key file is downloaded, if you open the content you will find finger print
variable "finger_print" {
  description = "finger print for the user"
}

# Once private key is downloaded, if you open you will find region
variable "region_identifier" {
  description = "Region of the cloud account"
}

# To get compartment ocid in OCI go to the section compartments and get it
variable "compartment_id" {
  description = "Description of the compartment id"
}

# This is the email id for the notifications
variable "email_id" {
  description = "Email id for the notifications"
}