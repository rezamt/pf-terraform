terraform {
  required_providers {
    pingfederate = {
      source = "pingidentity/pingfederate"
      version = "0.1.0"
    }
  }
}

# https://github.com/pingidentity/terraform-provider-pingfederate/blob/main/docs/index.md
provider "pingfederate" {
  # Configuration options
	https_host = "https://localhost:8888"
	username = "administrator"
	password = "2FederateM0re"
	insecure_trust_all_tls = "true"
    # ca_certificate_pem_files = ""
}
