data "google_iam_policy" "admin" {
  binding {
    role = "roles/iam.serviceAccountUser"

    members = [
      "user:fabi.denis@gmail.com",
      "user:felipe.montilla.santos@gmail.com",
      "user:italorafaeldeoliveirasantos@gmail.com",
      "user:uderson@gmail.com",
      "user:barroslucas690@gmail.com"
    ]
  }
}

resource "google_service_account" "sa" {
  account_id   = "terraform-2"
  display_name = "Conta de serviço para criação da infraestrutura."
}

resource "google_service_account_iam_policy" "admin-account-iam" {
  service_account_id = google_service_account.sa.name
  policy_data        = data.google_iam_policy.admin.policy_data
}