
resource "azurerm_container_registry" "acr" {
  name                = replace("${var.global_prefix}-${var.location}-${var.environment_code}-${var.purpose}", "-", "")
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = false

  tags = merge({
    environment = var.environment_code
  }, var.tags)
}
