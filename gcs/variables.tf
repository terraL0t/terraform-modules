variable "version" {
  type = string
  default = "~> 4.0"
}

variable "project_id" {
  type = string
}

variable "prefix" {
  type = string
}

variable "names" {
  type = list(string)
}

variable "location" {
  type = string
}
