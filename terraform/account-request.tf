# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "sandbox02@ghettolabs.io"
    AccountName  = "sandbox-account-02"
    # Syntax for top-level OU
    # ManagedOrganizationalUnit = "AFT-Management-OU"
    # Syntax for nested OU
    ManagedOrganizationalUnit = "AFT-Management-OU (ou-naop-6yxklipy)"
    SSOUserEmail     = "sandbox02@ghettolabs.io"
    SSOUserFirstName = "Sandbox02"
    SSOUserLastName  = "Account"
  }

  account_tags = {
    "ABC:Owner"       = "sandbox02@ghettolabs.io"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customizations"
}
