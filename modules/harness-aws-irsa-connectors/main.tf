# Create Aws connector using irsa Authentication
resource "harness_platform_connector_azure_cloud_provider" "inherit_from_delegate_user_assigned_managed_identity" {
  for_each = { for connector in var.connectors : connector.identifier => connector }

  identifier  = each.value.identifier
  name        = each.value.name
  description = each.value.description
  org_id      = each.value.org_id
  project_id  = each.value.project_id

  credentials {
    type = "InheritFromDelegate"
    azure_inherit_from_delegate_details {
      auth {
        azure_msi_auth_ua {
          client_id = "511828f0-91b6-4287-8b61-763a7b339670"
        }
        type = "UserAssignedManagedIdentity"
      }
    }
  }
  azure_environment_type = "AZURE"
#  delegate_selectors     = ["harness-delegate"]
   irsa {
     delegate_selectors     = ["$(each.value.harnessdelegate}"]
      region                = each.value.region
   }
   tags = var.tags 
}
