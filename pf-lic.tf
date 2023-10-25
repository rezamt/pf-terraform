resource "pingfederate_license" "License" {
  # this property needs to contain base64 encoded value of your license.
  file_data = filebase64("licenses/pf-11.2.5.lic")
}

resource "pingfederate_license_agreement" "LicenseAgreement" {
  # this value needs to be true in order for license agreement to be accepted
  accepted = true
  depends_on = [pingfederate_license.License]
}