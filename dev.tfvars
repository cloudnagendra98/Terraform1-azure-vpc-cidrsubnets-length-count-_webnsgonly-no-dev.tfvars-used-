resource_group_name     = "ntier-qa"
azurerm_virtual_network = "azure_ntier_vnet"
location                = "eastus"
azure_ntier_cidr        = "10.10.0.0/16"
#azure_subnet            = ["10.10.0.0/24"]
#subnet_address_prefixes = "10.10.%g.0/24" we removed this for now as we dont need now as we used cidrsubnet function in network.tf

subnet_names = ["web", "app", "db", "mgmt"]
