variable "resource_group_name" {
  type    = string
  default = "ntierresg"

}

variable "azurerm_virtual_network" {
  type        = string
  default     = "azure_ntier_vnet"
  description = "This is vnet cidr"

}

variable "location" {
  type        = string
  default     = "eastus"
  description = "This is resource group location"

}

variable "azure_ntier_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "This is azure vnet"

}

#As we dont need this address_prefixes when we use cidrsunet function so we put it in comments whole subnet_address_prefixes" block
#variable "subnet_address_prefixes" {
#  type = string
#  #type        = list(string)
#  default = "10.10.%g.0/24"
#  #default     = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24"]
#  description = "These are address subnet network ranges"
#
#
#}

variable "subnet_names" {
  type        = list(string)
  default     = ["web", "app", "db"]
  description = "These are subnet network names"

}

variable "network_security_group_config" {
  type = object({
    name = string
    rules = list(object({
      name                       = string
      protocol                   = string
      source_address_prefix      = string
      source_port_range          = string
      destination_address_prefix = string
      destination_port_range     = string
      access                     = string
      direction                  = string
      priority                   = string


    }))

  })
  default = {
    name = "webnsg"
    rules = [{
      name                       = "openhttp"
      protocol                   = "Tcp"
      source_address_prefix      = "*"
      source_port_range          = "*"
      destination_address_prefix = "*"
      destination_port_range     = "80"
      access                     = "Allow"
      priority                   = 300
      direction                  = "Inbound"

    }]
  }
}