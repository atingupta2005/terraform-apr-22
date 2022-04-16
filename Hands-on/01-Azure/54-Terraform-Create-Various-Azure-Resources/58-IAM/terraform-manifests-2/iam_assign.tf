resource "azurerm_role_assignment" "assignment" {
 scope = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myRG01"
 role_definition_id = azurerm_role_definition.app_service_operator.id
 principal_id = "00000000-0000-0000-0000-000000000000"
}

resource "azurerm_role_assignment" "assignment2" {
 scope = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myRG02"
 role_definition_id = azurerm_role_definition.app_service_operator.id
 principal_id = "11111111-1111-1111-1111-111111111111"
}
