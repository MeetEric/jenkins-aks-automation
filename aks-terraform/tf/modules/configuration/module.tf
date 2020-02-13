variable "location" {
    type = string
}

variable "name" {
    type = string
}

variable "prefix" {
    type = string
}

output "location" {
    value = var.location
}

output "name" {
    value = var.name
}

output "prefix" {
    value = var.prefix
}

