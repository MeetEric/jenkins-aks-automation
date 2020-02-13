variable "location" {
    type = string
}

variable "name" {
    type = string
}

variable "prefix" {
    type = string

    validation {
        condition = length(var.prefix) > 3 && length(var.prefix) <= 8
        error_message = "A prefix must be provided and between 3 and 8 characters"
    }
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

