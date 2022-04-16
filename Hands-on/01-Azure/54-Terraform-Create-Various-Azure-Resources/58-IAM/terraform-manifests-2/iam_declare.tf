provider "azurerm" {
  features {}
}

terraform{
 backend "azurerm" {
  resource_group_name = "my-resource-group"
  storage_account_name = "my-storage-account"
  container_name = "my-container"
 key = "my-azure-storage-account-connection-key"
  }
}

######
# Declare role
######

resource "azurerm_role_definition" "app_service_operator" {
 name = "app-service-operator"
 scope = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
 description = "custom app service operator"

 permissions {
 actions = [
          "Microsoft.Authorization/*/read",
          "Microsoft.Insights/alertRules/*",
          "Microsoft.Insights/components/*",
          "Microsoft.ResourceHealth/availabilityStatuses/read",
          "Microsoft.Resources/subscriptions/resourceGroups/read",
          "Microsoft.Web/listSitesAssignedToHostName/read",
          "Microsoft.Web/serverFarms/read",
          "Microsoft.Web/sites/stop/Action",
          "Microsoft.Web/sites/start/Action",
          "Microsoft.Web/sites/restart/Action",
          "Microsoft.Web/sites/Read",
          "Microsoft.Web/*/read"
        ]
 not_actions = []
}

assignable_scopes = ["subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"]
}

######
# Assign role
######

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
