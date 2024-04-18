variable "location" {
  type        = string
  description = "Azure location."
}

variable "username" {
  type        = string
  description = "Username for the Postgres Server."
}

variable "password" {
  type        = string
  description = "Password associated with the username for the Postgres Server."
  sensitive   = true
}

variable "context" {
  description = "This variable contains Radius recipe context."

  type = any
}
