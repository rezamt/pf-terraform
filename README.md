# Terraform for PingFederate

The current PingFederate Provider only supports PingFederate 11.2 [PingFederate Version Support](https://github.com/pingidentity/terraform-provider-pingfederate/blob/main/docs/index.md)

## IMPORTANT Release Information
# v0.2.0 (Unreleased)
### FEATURES
#### Resources
* **New Resource:** `pingfederate_idp_adapter` (#64)
* **New Resource:** `pingfederate_token_processor_to_token_generator_mapping` (#65)
* **New Resource:** `pingfederate_oauth_token_exchange_processor_policy_token_generator_mapping` (#68)
* **New Resource:** `pingfederate_sp_authentication_policy_contract_mapping` (#75)

​
#### Data Sources
* **New Data Source:** `pingfederate_administrative_account` (#70)
* **New Data Source:** `pingfederate_authentication_api_settings` (#70)
* **New Data Source:** `pingfederate_certificate_ca` (#70)
* **New Data Source:** `pingfederate_idp_default_urls` (#70)
* **New Data Source:** `pingfederate_key_pair_signing_import` (#70)
* **New Data Source:** `pingfederate_key_pair_ssl_server_import` (#70)
* **New Data Source:** `pingfederate_license_agreement` (#70)
* **New Data Source:** `pingfederate_license` (#70)
* **New Data Source:** `pingfederate_local_identity_identity_profile` (#70)
* **New Data Source:** `pingfederate_oauth_access_token_manager` (#76)

​
# v0.1.0 September 28, 2023
​
### FEATURES
* **New Resource:** `pingfederate_administrative_account` => [Initial Commit](https://github.com/pingidentity/terraform-provider-pingfederate/commit/fe35b53aac7146d2a75eeb70f4e21aaf52995a96)
* **New Resource:** `pingfederate_authentication_api_settings` (#7)
* **New Resource:** `pingfederate_authentication_policy_contract` => [Initial Commit](https://github.com/pingidentity/terraform-provider-pingfederate/commit/fe35b53aac7146d2a75eeb70f4e21aaf52995a96)
* **New Resource:** `pingfederate_certificate_ca` (#13)
* **New Resource:** `pingfederate_idp_default_urls` (#8)
* **New Resource:** `pingfederate_key_pair_signing_import` => [Initial Commit](https://github.com/pingidentity/terraform-provider-pingfederate/commit/fe35b53aac7146d2a75eeb70f4e21aaf52995a96)
* **New Resource:** `pingfederate_key_pair_ssl_server_import` => [Initial Commit](https://github.com/pingidentity/terraform-provider-pingfederate/commit/fe35b53aac7146d2a75eeb70f4e21aaf52995a96)
* **New Resource:** `pingfederate_license` (#13)
* **New Resource:** `pingfederate_license_agreement` (#15)
* **New Resource:** `pingfederate_local_identity_profile` (#38)
* **New Resource:** `pingfederate_oauth_access_token_manager` (#55)
* **New Resource:** `pingfederate_oauth_auth_server_settings` (#34)
* **New Resource:** `pingfederate_oauth_auth_server_settings_scopes_common_scope` => [Initial Commit](https://github.com/pingidentity/terraform-provider-pingfederate/commit/fe35b53aac7146d2a75eeb70f4e21aaf52995a96)
* **New Resource:** `pingfederate_oauth_auth_server_settings_scopes_exclusive_scope` => [Initial Commit](https://github.com/pingidentity/terraform-provider-pingfederate/commit/fe35b53aac7146d2a75eeb70f4e21aaf52995a96)
* **New Resource:** `pingfederate_oauth_issuer` => [Initial Commit](https://github.com/pingidentity/terraform-provider-pingfederate/commit/fe35b53aac7146d2a75eeb70f4e21aaf52995a96)
* **New Resource:** `pingfederate_password_credential_validator` (#39)
* **New Resource:** `pingfederate_protocol_metadata_lifetime_settings` (#9)
* **New Resource:** `pingfederate_redirect_validation` (#17)
* **New Resource:** `pingfederate_server_settings` (#47)
* **New Resource:** `pingfederate_server_settings_general_settings` (#10)
* **New Resource:** `pingfederate_server_settings_log_settings` (#23)
* **New Resource:** `pingfederate_server_settings_system_keys` (#30)
* **New Resource:** `pingfederate_session_application_session_policy` (#11)
* **New Resource:** `pingfederate_session_authentication_session_policies_global` (#12)
* **New Resource:** `pingfederate_session_settings` (#16)
* **New Resource:** `pingfederate_virtual_host_names` (#14)

# How To Run the Terraform

```bash
terraform init
terraform plan
terraform apply -auto-approve
# terraform destroy
```

#### What you need to be careful when using terraform perform is: `Force Replacement`
For example if you make a change to admin user description, terraform will not execute an update, if perform a Force Replacement.

```commandline
pingfederate_administrative_account.reza: Refreshing state... [id=reza]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # pingfederate_administrative_account.reza must be replaced
-/+ resource "pingfederate_administrative_account" "reza" {
      ~ active        = false -> true
      ~ auditor       = false -> (known after apply)
      + description   = "Terrform Demo" # forces replacement
      + email_address = (known after apply) # forces replacement
      ~ id            = "reza" -> (known after apply)
        # (3 unchanged attributes hidden)
    }

Plan: 1 to add, 0 to change, 1 to destroy.
pingfederate_administrative_account.reza: Destroying... [id=reza]
pingfederate_administrative_account.reza: Destruction complete after 0s
pingfederate_administrative_account.reza: Creating...
pingfederate_administrative_account.reza: Creation complete after 0s [id=reza]

Apply complete! Resources: 1 added, 0 changed, 1 destroyed.

```

# References
- [pingidentity/terraform-provider-pingfederate Public](https://github.com/pingidentity/terraform-provider-pingfederate)