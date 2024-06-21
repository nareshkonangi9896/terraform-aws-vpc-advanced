variable "cidr_block" {
    type = string
}
variable "enable_dns_hostnames" {
    type = bool
    default = true
}
variable "enable_dns_support" {
    type = bool
    default = true
}
variable "project_name" {
    type = string
}
variable "comman_tags" {
    type = map
    default = {}
}
variable "vpc_tags" {
    type = map
    default = {}
}
variable "igw_tags" {
    type = map
    default = {}
}
variable "public_subnet_cidr" {
    type = list
    validation {
      condition = length(var.public_subnet_cidr)==2
      error_message = "please provide two public subnet cidr"
    }
}
variable "private_subnet_cidr" {
    type = list
    validation {
      condition = length(var.private_subnet_cidr)==2
      error_message = "please provide two private subnet cidr"
    }
}
variable "database_subnet_cidr" {
    type = list
    validation {
      condition = length(var.database_subnet_cidr)==2
      error_message = "please provide two database subnet cidr"
    }
}
variable "nat_gw_tags" {
    type = map
    default = {}
}
variable "public_route_tags" {
    type = map
    default = {}
}
variable "private_route_tags" {
    type = map
    default = {}
}
variable "database_route_tags" {
    type = map
    default = {}
}
variable "db_group_tags" {
    type = map
    default = {}
}
