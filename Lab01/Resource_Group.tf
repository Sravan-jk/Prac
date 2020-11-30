

resource "azurerm_resource_group" "secmgmt" {
    name = var.rgname
    location = var.rgloc
}

data "azurerm_client_config" "current" {}


resource "azurerm_key_vault" "newkv" {
    name = var.kvname
    location = azurerm_resource_group.secmgmt.location
    resource_group_name = azurerm_resource_group.secmgmt.name
    sku_name = "premium"
    tenant_id = data.azurerm_client_config.current.tenant_id
    access_policy {
        tenant_id = data.azurerm_client_config.current.tenant_id
        object_id = data.azurerm_client_config.current.object_id
        key_permissions  = [
            "get", "list", "update", "create","delete",
        ]
        secret_permissions = [
            "backup", "delete", "get", "list",
        ]
    }
}
