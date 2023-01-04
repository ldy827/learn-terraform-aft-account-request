module "ndne_dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awstest0104.ndne.dev@gmail.com"
    AccountName               = "ndne-dev"
    ManagedOrganizationalUnit = "NDNE"
    SSOUserEmail              = "awstest0104.ndne.dev@gmail.com"
    SSOUserFirstName          = "DAE YOUNG"
    SSOUserLastName           = "LEE"
  }

  account_tags = {
    "Project" = "NDNE"
    "Environment" = "DEV"
  }

  change_management_parameters = {
    change_requested_by = "CoE OU Operator"
    change_reason       = "Add Account"
  }

  custom_fields = {
    group = "non-prod"
  }
  
  account_customizations_name = "sandbox"
}
