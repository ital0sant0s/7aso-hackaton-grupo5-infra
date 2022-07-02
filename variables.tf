variable "db_user_name" {
  type    = string
  description = "(Required) The name of the user. Changing this forces a new resource to be created."
  default = "backendspotmusic"
}

variable "db_user_password" {
  type    = string
  description = "(Optional) The password for the user. Can be updated. For Postgres instances this is a Required field, unless type is set to either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT."
  sensitive = true
}
