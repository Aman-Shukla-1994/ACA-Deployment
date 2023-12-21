resource "azurerm_container_app_environment" "my_cae" {
  name                      = "cae-${local.stack}"
  location                   = azurerm_resource_group.my_rg.location
  resource_group_name        = azurerm_resource_group.my_rg.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.my_law.id
  tags = local.default_tags
}

resource "azurerm_container_app" "my_ca" {
  name                         = "ca-${local.stack}"
  container_app_environment_id = azurerm_container_app_environment.my_cae.id
  resource_group_name          = azurerm_resource_group.my_rg.name
  revision_mode                = "Single"

  ingress {
    allow_insecure_connections = false
    external_enabled           = true
    target_port                = 80
    traffic_weight {
      percentage = 100
    }
 }

  template {
    container {
      name   = "examplecontainerapp"
      image  = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
      cpu    = 0.25
      memory = "0.5Gi"
    }
  }
}