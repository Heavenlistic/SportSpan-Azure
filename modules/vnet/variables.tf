variable "name" {
  type        = string
  default     = "sportspanworldwide"
  description = "Name for resources"
  
}
variable "vnet_name" {
  type        = string
  description = "Virtual Network Name"
}
variable "location" {
  type        = string
  default     = "canadacentral"
  description = "Azure Location of resources"
}
 
variable "network_address_space" {
    type        = string
  description = "Azure VNET Address Space"
}
 
variable "aks_subnet_address_prefix" {
    type        = string
  description = "AKS Subnet Address Space"
}
 
variable "aks_subnet_address_name" {
  type        = string
  description = "AKS Subnet Address Name"
}
 
variable "appgw_subnet_address_prefix" {
  type        = string
  description = "APPGW Subnet Address Space"
}
 
variable "appgw_subnet_address_name" {
 type        = string
  description = "Subnet Address Name"
}
 
variable "environment" {
  type        = string
  description = "environment"
}