output "azurerm_container_app_url" {
  value = azurerm_container_app.my_ca.ingress[0].fqdn
}