module "test11" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awstest0103.stg@gmail.com"
    AccountName               = "test11"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "awstest0103.stg@gmail.com"
    SSOUserFirstName          = "DAE YOUNG"
    SSOUserLastName           = "LEE"
  }

  account_tags = {
    "Project" = "Sandbox"
    "Environment" = "DEV"
  }

  change_management_parameters = {
    change_requested_by = "CoE OU Operator"
    change_reason       = "Add Account"
  }

  custom_fields = {
    group = "non-prod"
  }

 # account_customizations_name = "sandbox"
}
