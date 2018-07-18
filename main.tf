
resource "azurerm_resource_group" "rg_test" {
  name     = "Test_ajay_rg"
  location = "${var.location}"
}


resource "azurerm_virtual_network" "vnet_test2" {
  name                = "Test_vnet2"
  location            = "${var.location}"
  address_space       = ["10.2.0.0/16"]
  resource_group_name = "${azurerm_resource_group.rg_test.name}"
}

