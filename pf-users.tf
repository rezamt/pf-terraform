resource "pingfederate_administrative_account" "reza" {
  active      = true
  description = "Terrform Demo"
  username = "reza"
  password = "2FederateM0re"
  roles    = ["USER_ADMINISTRATOR"]
  email_address = "reza@example.com"
}
