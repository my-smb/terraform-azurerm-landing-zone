###
#  module variables
###

#common

variable "region" {
  description = "Geographic Region resource will be deployed into"
  type        = string
}

variable "environment" {
  description = "Development environment for resource; prod, non-prod, shared-services"
  type        = string
}

#kubernetes_cluster

variable "storage_account_uri" {
  description = "(Required) The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor."
  type        = string
}

variable "virtual_network_name" {
  description = "(Required) The Name of the Virtual Network where this subnet should be located in."
  type        = string
}

variable "virtual_network_resource_group" {
  description = "(Required) The Name of the Virtual Network where this subnet should be located in."
  type        = string
}

variable "address_prefix_k8s_master" {
  description = "(Required) The address prefix for the k8s master subnet"
  type        = list
}

variable "address_prefix_k8s_node" {
  description = "(Required) The address prefix for the k8s_node subnet"
  type        = list
}

variable "vm_size_k8s_master" {
  description = "(Required) The SKU which should be used for this Virtual Machine, such as Standard_F2."
  type        = string
  default     = "Standard_B2s"
}

variable "vm_size_k8s_node" {
  description = "(Required) The SKU which should be used for this Virtual Machine, such as Standard_F2."
  type        = string
  default     = "Standard_B2s"
}

#tags

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map
  default     = {}
}
