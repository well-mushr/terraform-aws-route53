variable "public" {
  type    = bool
  default = true
}

variable "private" {
  type    = bool
  default = false
}

variable "domain_name" {
  type = string
}

variable "vpc_associations" {
  type    = list
  default = []
}
