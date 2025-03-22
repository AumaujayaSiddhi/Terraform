output "adb_id" {
  value = oci_database_autonomous_database.TESTATPDB.id
}

output "jdbc_connection_string" {
  value = oci_database_autonomous_database.TESTATPDB.connection_strings[0].all_connection_strings["MEDIUM"]
}