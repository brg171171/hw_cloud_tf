variable "cloud_id" {
  type        = string
  description = "Cloud ID"
}

variable "folder_id" {
  type        = string
  description = "Folder ID"
}

variable "zone" {
  type        = string
  description = "Availability zone"
  default     = "ru-central1-a"
}