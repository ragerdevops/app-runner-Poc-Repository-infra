variable "repository_url" {
  description = "Location of the repository that contains the source code. Repository must be located in same scope as the GitHub connection (user's profile or organization)"
  type        = string
  default     = "https://github.com/aws-containers/hello-app-runner" # Modifica variable por tu repositorio de aplicación.
}