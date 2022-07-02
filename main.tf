resource "google_sql_database_instance" "main" {
  name             = var.db_instance_name
  database_version = "MYSQL_8_0"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-n1-standard-1"
  }
}

resource "google_sql_user" "users" {
  name     = "backendspotmusic"
  instance = google_sql_database_instance.main.name
  host     = "%"
  password = var.db_user_password
}