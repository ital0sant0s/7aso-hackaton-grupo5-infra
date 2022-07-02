resource "google_sql_database_instance" "main" {
  name             = "dbmysql-spotmusic-7aso-hackaton-grupo5"
  database_version = "MYSQL_8_0"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-n1-standard-1"
  }
}