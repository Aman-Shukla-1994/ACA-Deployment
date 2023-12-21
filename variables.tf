variable "region" {
  description = "Azure infrastructure region"
  type    = string
  default = "centralus"
}

variable "app" {
  description = "Application that we want to deploy"
  type    = string
  default = "myapp"
}

variable "env" {
  description = "Application env"
  type    = string
  default = "dev"
}

variable "location" {
  description = "Location short name "
  type    = string
  default = "cu"
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