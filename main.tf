locals {
  stack = "${var.app}-${var.env}-${var.location}"
  default_tags = {
    environment = var.env
    owner       = "A.S"
    app         = var.app
  }
}

resource "azurerm_resource_group" "my_rg" {
  name     = "rg-${local.stack}"
  location = var.region
  tags = local.default_tags
}

resource "azurerm_resource_group" "my_new_rg" {
  name     = "rg-${local.stack}"
  location = var.region
  tags = local.default_tags
}

resource "azurerm_log_analytics_workspace" "my_law" {
  name                = "log-${local.stack}"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  tags = local.default_tags
}