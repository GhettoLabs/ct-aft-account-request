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
  
module "development_account" {
  source = "./modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail = "dev@ghettolabs.io"
    AccountName  = "Development"
    # Syntax for top-level OU
    # ManagedOrganizationalUnit = "AFT-Management-OU"
    # Syntax for nested OU
    ManagedOrganizationalUnit = "AFT-Management-OU (ou-mvw8-7azv2nsm)"
    SSOUserEmail     = "dev@ghettolabs.io"
    SSOUserFirstName = "dev"
    SSOUserLastName  = "account"
  }

  account_tags = {
    "ABC:Owner"       = "dev@ghettolabs.io"
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
    change_reason       = "Adding Development Account to Control Tower"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "ghettolabs-customizations"
}
  
module "production_account" {
  source = "./modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail = "production@ghettolabs.io"
    AccountName  = "production"
    # Syntax for top-level OU
    # ManagedOrganizationalUnit = "AFT-Management-OU"
    # Syntax for nested OU
    ManagedOrganizationalUnit = "AFT-Management-OU (ou-mvw8-7azv2nsm)"
    SSOUserEmail     = "production@ghettolabs.io"
    SSOUserFirstName = "production"
    SSOUserLastName  = "account"
  }

  account_tags = {
    "ABC:Owner"       = "production@ghettolabs.io"
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
    change_reason       = "Adding production Account to Control Tower"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "ghettolabs-customizations"
}
  
