resource "google_artifact_registry_repository" "my-repo" {
  provider = google-beta

  location = "us-central1"
  repository_id = "spotmusic-2"
  description = "Imagens Docker"
  format = "DOCKER"
}