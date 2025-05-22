# Create azure connector using umi Authentication
resource "harness_platform_connector_azure_cloud_provider" "inherit_from_delegate_user_assigned_managed_identity" {
  for_each = { for connector in var.connectors : connector.identifier => connector }

  identifier  = each.value.identifier
  name        = each.value.name
  description = each.value.description
  org_id      = each.value.org_id
  project_id  = each.value.project_id
  tags = var.tags 
  credentials {
    type = "InheritFromDelegate"
    azure_inherit_from_delegate_details {
      auth {
        azure_msi_auth_ua {
          client_id = "fd053031-8d2c-44f3-9dd2-ff9aa7d1e8e4"
        }
        type = "UserAssignedManagedIdentity"
      }
    }
  }
  azure_environment_type = "AZURE"
#  delegate_selectors     = ["harness-delegate"]
  delegate_selectors   = ["$(each.value.harnessdelegate}"]
#  region               = each.value.region
}
