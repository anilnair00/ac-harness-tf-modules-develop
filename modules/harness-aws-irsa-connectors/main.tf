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
          client_id = "client_id"
        }
        type = "UserAssignedManagedIdentity"
      }
    }
  }
  azure_environment_type = "AZURE"
  delegate_selectors     = ["harness-delegate"]
}

  tags = var.tags
}
