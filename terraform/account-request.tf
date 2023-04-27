# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "staging_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "staging@ghettolabs.io"
    AccountName  = "Staging"
    # Syntax for top-level OU
    # ManagedOrganizationalUnit = "AFT-Management-OU"
    # Syntax for nested OU
    ManagedOrganizationalUnit = "AFT-Management-OU (ou-mvw8-7azv2nsm)"
    SSOUserEmail     = "staging@ghettolabs.io"
    SSOUserFirstName = "staging"
    SSOUserLastName  = "account"
  }

  account_tags = {
    "ABC:Owner"       = "staging@ghettolabs.io"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "James Knott"
    change_reason       = "Adding Staging Account to Control Tower"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "ghettolabs-customizations"
}

  
#   module "sandbox_account_03" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail = "sandbox03@ghettolabs.io"
#     AccountName  = "sandbox-account-03"
#     # Syntax for top-level OU
#     # ManagedOrganizationalUnit = "AFT-Management-OU"
#     # Syntax for nested OU
#     ManagedOrganizationalUnit = "AFT-Management-OU (ou-naop-6yxklipy)"
#     SSOUserEmail     = "sandbox03@ghettolabs.io"
#     SSOUserFirstName = "Sandbox03"
#     SSOUserLastName  = "Account"
#   }

#   account_tags = {
#     "ABC:Owner"       = "sandbox03@ghettolabs.io"
#     "ABC:Division"    = "ENT"
#     "ABC:Environment" = "Dev"
#     "ABC:CostCenter"  = "123456"
#     "ABC:Vended"      = "true"
#     "ABC:DivCode"     = "102"
#     "ABC:BUCode"      = "ABC003"
#     "ABC:Project"     = "123456"
#   }

#   change_management_parameters = {
#     change_requested_by = "John Doe"
#     change_reason       = "testing the account vending process"
#   }

#   custom_fields = {
#     custom1 = "a"
#     custom2 = "b"
#   }

#   account_customizations_name = "sandbox-customizations"
# }

# module "sandbox_account_04" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail = "sandbox04@ghettolabs.io"
#     AccountName  = "sandbox-account-04"
#     # Syntax for top-level OU
#     # ManagedOrganizationalUnit = "AFT-Management-OU"
#     # Syntax for nested OU
#     ManagedOrganizationalUnit = "AFT-Management-OU (ou-naop-6yxklipy)"
#     SSOUserEmail     = "sandbox04@ghettolabs.io"
#     SSOUserFirstName = "Sandbox04"
#     SSOUserLastName  = "Account"
#   }

#   account_tags = {
#     "ABC:Owner"       = "sandbox04@ghettolabs.io"
#     "ABC:Division"    = "ENT"
#     "ABC:Environment" = "Dev"
#     "ABC:CostCenter"  = "123456"
#     "ABC:Vended"      = "true"
#     "ABC:DivCode"     = "102"
#     "ABC:BUCode"      = "ABC003"
#     "ABC:Project"     = "123456"
#   }

#   change_management_parameters = {
#     change_requested_by = "John Doe"
#     change_reason       = "testing the account vending process"
#   }

#   custom_fields = {
#     custom1 = "a"
#     custom2 = "b"
#   }

#   account_customizations_name = "sandbox-customizations"
# }
