output "azurerm_container_app_url" {
  value = azurerm_container_app.my_first_app.ingress[0].fqdn
}