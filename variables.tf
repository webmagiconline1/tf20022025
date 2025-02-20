variable "instance_name" {
    description = "The name of the instance"
    type        = string
}

variable "machine_type" {
    description = "The machine type to use for the instance"
    type        = string
}

variable "zone" {
    description = "The zone to deploy the instance in"
    type        = string
}

variable "project" {
    description = "The GCP project to deploy the instance in"
    type        = string
}

variable "boot_disk_image" {
    description = "The image to use for the boot disk"
    type        = string
}

variable "network" {
    description = "The network to attach the instance to"
    type        = string
}

variable "instance_count" {
    description = "Number of instances to create"
    type        = number
    default     = 1
}