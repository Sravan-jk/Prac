
resource "azurerm_resource_group" "firstrg" {
    name = var.rgname
    location = var.rgloc
    tags {
        env = var.env

    }
}