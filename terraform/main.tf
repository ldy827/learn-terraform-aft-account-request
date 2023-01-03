module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awstest0103.sandbox@gmail.com"
    AccountName               = "newbie"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "awstest0103.sandbox@gmail.com"
    SSOUserFirstName          = "DAE YOUNG"
    SSOUserLastName           = "LEE"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
