variable "region" {
  description = "Azure infrastructure region"
  type    = string
  default = "eastus"
}

variable "app" {
  description = "Application that we want to deploy"
  type    = string
  default = "mynewapp"
}

variable "env" {
  description = "Application env"
  type    = string
  default = "qa"
}

variable "location" {
  description = "Location short name "
  type    = string
  default = "eu"
}

variable "prefix" {
  description = "Prefix"
  type    = string
  default = "prefix"
}

variable "stage" {
  description = "Stage"
  type    = string
  default = "stage"
}