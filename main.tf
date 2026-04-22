resource "azurerm_resource_group" "git-md" {
    name = "git-md1"
    location = "central india"
  
}

resource "azurerm_storage_account" "git-storage1" {
    name = "git-storage-md"
    resource_group_name = azurerm_resource_group.git-md
    location = azurerm_resource_group.git-md
    account_tier = Standard
    account_replication_type = "GRS"
  
}